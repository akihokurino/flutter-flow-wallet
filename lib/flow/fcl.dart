import 'dart:convert';

import 'package:convert/convert.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter_flow_wallet/flow/account.dart';
import 'package:flutter_flow_wallet/flow/cadence_types.dart';
import 'package:flutter_flow_wallet/flow/generated/access/access.pbgrpc.dart';
import 'package:flutter_flow_wallet/flow/generated/entities/account.pb.dart';
import 'package:flutter_flow_wallet/flow/generated/entities/transaction.pb.dart';
import 'package:flutter_flow_wallet/flow/transaction.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:rlp/rlp.dart';

class FlowClient {
  String endPoint;
  int port;
  ClientChannelBase channel;
  AccessAPIClient accessClient;

  static const String flowEmulatorEndpoint = '127.0.0.1';
  static const int flowEmulatorPort = 3569;

  static FlowClient create(String endPoint, int port) {
    final channel = ClientChannel(
      endPoint,
      port: port,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );

    final accessClient = AccessAPIClient(channel,
        options: CallOptions(timeout: const Duration(seconds: 2)));

    return FlowClient(endPoint, port, channel, accessClient);
  }

  FlowClient(this.endPoint, this.port, this.channel, this.accessClient);

  Future<AccountResponse> getAccount(String address) async {
    final request =
        GetAccountAtLatestBlockRequest(address: hex.decode(address));
    return accessClient.getAccountAtLatestBlock(request);
  }

  Future<String> getAccountBalance(String address) async {
    final account = (await getAccount(address)).account;
    return "${account.balance}";
  }

  Future<BlockResponse> getLatestBlock(bool isSealed) {
    return accessClient
        .getLatestBlock(GetLatestBlockRequest(isSealed: isSealed));
  }

  Future<SendTransactionResponse> sendTransaction(
      {required String address,
      required String privateKey,
      required String code,
      List<CadenceValue>? arguments,
      int gasLimit = 9999}) async {
    final args = _prepareArguments(arguments);

    final latestBlock = (await getLatestBlock(true)).block;
    final executorAddress = hex.decode(address);

    final account = (await getAccount(address)).account;
    const keyId = 0;
    final sequenceNumber = account.keys[keyId].sequenceNumber;

    final proposalKey = Transaction_ProposalKey(
        address: executorAddress,
        sequenceNumber: Int64(sequenceNumber),
        keyId: keyId);

    final transaction = Transaction(
        payer: executorAddress,
        script: utf8.encode(code),
        referenceBlockId: latestBlock.id,
        proposalKey: proposalKey,
        gasLimit: Int64(gasLimit),
        authorizers: [executorAddress],
        arguments: args);

    final signature = signData(transaction, privateKey);
    final envelopeSignature = Transaction_Signature(
        address: executorAddress, keyId: keyId, signature: signature);
    transaction.envelopeSignatures.insertAll(0, [envelopeSignature]);

    final request = SendTransactionRequest(transaction: transaction);
    return accessClient.sendTransaction(request);
  }

  Future<SendTransactionResponse> createAccount(
      {required String address,
      required String privateKey,
      int gasLimit = 9999}) async {
    const newPrivateKey =
        "83334c1c0204901b2b26ce5ea723cfa19592dc4a0c361f8e143daf1ad197cf42";
    const newPublicKey =
        "0xf44c3090debfe7e17a6a039c460d816129e569c1366b4de68f23fecf9ad7a7efff7ad0c640b3fa7dbe51fc50ff3d7ea5d1e61f4e4cd7209e6f74df73c0832edd";

    final latestBlock = (await getLatestBlock(true)).block;
    final ownerAddress = hex.decode(address);

    final account = (await getAccount(address)).account;
    const keyId = 0;
    final accountKey = account.keys[keyId];
    final sequenceNumber = accountKey.sequenceNumber;

    final newAccountKey = AccountKey(
        publicKey: utf8.encode(newPublicKey),
        hashAlgo: 3,
        signAlgo: 2,
        weight: 1000);

    print("-----------------------------------");
    print("公開鍵");
    print(newPublicKey);

    // FIXME: ここがgo-sdkと違ってしまう
    // ECDSAの鍵を作ってそれで公開鍵を用意し、署名していく必要がある
    print("公開鍵エンコード");
    print(utf8.encode(newPublicKey));

    // FIXME: 公開鍵エンコードに差異があるのでここも違ってしまう
    print("アカウントキーRLPエンコード");
    print(newAccountKey.rlpEncode());

    // go-sdkと一致するのでRLPエンコード自体に問題はなさそう
    print("アカウントキーRLPエンコード（ハードコード確認）");
    print(Rlp.encode([
      "0xf44c3090debfe7e17a6a039c460d816129e569c1366b4de68f23fecf9ad7a7efff7ad0c640b3fa7dbe51fc50ff3d7ea5d1e61f4e4cd7209e6f74df73c0832edd",
      2,
      3,
      1000
    ]));

    // FIXME: 公開鍵エンコードに差異があるのでここも違ってしまう
    print("アカウントキーエンコード");
    print(hex.encode(newAccountKey.rlpEncode()));

    // go-sdkと一致するのでhexエンコード自体に問題はなさそう
    print("アカウントキーエンコード（ハードコード確認）");
    print(hex.encode(const [248, 137, 248, 130, 48, 120, 102, 52, 52, 99]));
    print("-----------------------------------");

    final arg1 =
        CadenceContainerValue(type: CadenceContainerType.array, values: [
      CadenceValue(
          type: CadenceType.string,
          value: hex.encode(newAccountKey.rlpEncode()))
    ]);
    final arg2 = CadenceContainerValue(
        type: CadenceContainerType.dictionary, values: []);

    final proposalKey = Transaction_ProposalKey(
        address: ownerAddress,
        sequenceNumber: Int64(sequenceNumber),
        keyId: keyId);

    const code = '''
transaction(publicKeys: [String], contracts: {String: String}) {
	prepare(signer: AuthAccount) {
		let acct = AuthAccount(payer: signer)

		for key in publicKeys {
			acct.addPublicKey(key.decodeHex())
		}

		for contract in contracts.keys {
			acct.contracts.add(name: contract, code: contracts[contract]!.decodeHex())
		}
	}
}
  ''';

    final transaction = Transaction(
        payer: ownerAddress,
        script: utf8.encode(code),
        referenceBlockId: latestBlock.id,
        proposalKey: proposalKey,
        gasLimit: Int64(gasLimit),
        authorizers: [ownerAddress],
        arguments: [arg1.toMessage(), arg2.toMessage()]);

    final signature = signData(transaction, privateKey);
    final envelopeSignature = Transaction_Signature(
        address: ownerAddress, keyId: keyId, signature: signature);
    transaction.envelopeSignatures.insertAll(0, [envelopeSignature]);

    final request = SendTransactionRequest(transaction: transaction);
    return accessClient.sendTransaction(request);
  }

  dynamic _prepareArguments(List<CadenceValue>? arguments) {
    var args = List<CadenceValue>.empty();

    if (arguments != null) {
      args = arguments;
    }

    return args.map((e) => e.toMessage());
  }
}
