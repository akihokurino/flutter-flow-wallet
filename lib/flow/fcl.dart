import 'dart:convert';

import 'package:convert/convert.dart';
import 'package:elliptic/elliptic.dart' as el;
import 'package:fixnum/fixnum.dart';
import 'package:flutter_flow_wallet/flow/crypto.dart';
import 'package:flutter_flow_wallet/flow/encode.dart';
import 'package:flutter_flow_wallet/flow/generated/access/access.pbgrpc.dart';
import 'package:flutter_flow_wallet/flow/generated/entities/account.pb.dart';
import 'package:flutter_flow_wallet/flow/generated/entities/transaction.pb.dart';
import 'package:flutter_flow_wallet/flow/types.dart';
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
  static const String domainTag = "FLOW-V0.0-transaction";

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

    final payload = transactionPayload(transaction);
    final envelope = foldEnvelope(payload, transaction);
    final envelopeSignature = Transaction_Signature(
        address: executorAddress,
        keyId: keyId,
        signature: signData(envelope, privateKey));
    final envelopeSignatures = [envelopeSignature];
    transaction.envelopeSignatures.insertAll(0, envelopeSignatures);

    final request = SendTransactionRequest(transaction: transaction);
    return accessClient.sendTransaction(request);
  }

  Future<SendTransactionResponse> createAccount(
      {required String address,
      required String privateKey,
      required el.PrivateKey newPrivateKey,
      int gasLimit = 9999}) async {
    final latestBlock = (await getLatestBlock(true)).block;
    final ownerAddress = hex.decode(address);

    final account = (await getAccount(address)).account;
    const keyId = 0;
    final accountKey = account.keys[keyId];
    final sequenceNumber = accountKey.sequenceNumber;

    final newAccountKey = AccountKey(
        publicKey: utf8.encode(newPrivateKey.publicKey.toHex()),
        index: 1,
        hashAlgo: accountKey.hashAlgo,
        signAlgo: accountKey.signAlgo,
        weight: 1000);

    final arg1 = CadenceValue(
        type: CadenceType.string,
        value: hex.encode(Rlp.encode([
          newAccountKey.publicKey,
          newAccountKey.signAlgo,
          newAccountKey.hashAlgo,
          1000
        ])));
    final arg2 = CadenceValue(type: CadenceType.string, value: "");

    final args = _prepareArguments([arg1, arg2]);

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
        arguments: args);

    final payload = transactionPayload(transaction);
    final envelope = foldEnvelope(payload, transaction);
    final envelopeSignature = Transaction_Signature(
        address: ownerAddress,
        keyId: keyId,
        signature: signData(envelope, privateKey));
    final envelopeSignatures = [envelopeSignature];
    transaction.envelopeSignatures.insertAll(0, envelopeSignatures);

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
