import 'dart:convert';

import 'package:convert/convert.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter_flow_wallet/flow/account.dart';
import 'package:flutter_flow_wallet/flow/cadence_types.dart';
import 'package:flutter_flow_wallet/flow/generated/access/access.pbgrpc.dart';
import 'package:flutter_flow_wallet/flow/generated/entities/account.pb.dart';
import 'package:flutter_flow_wallet/flow/generated/entities/transaction.pb.dart';
import 'package:flutter_flow_wallet/flow/key.dart';
import 'package:flutter_flow_wallet/flow/transaction.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_connection_interface.dart';

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
      {required String rawAddress,
      required String rawPrivateKey,
      required String code,
      List<CadenceValue>? arguments,
      int gasLimit = 9999}) async {
    final address = hex.decode(rawAddress);
    final privateKey = convertECDSAPrivateKey(rawPrivateKey);

    final block = (await getLatestBlock(true)).block;
    final account = (await getAccount(rawAddress)).account;
    const keyId = 0;
    final accountKey = account.keys[keyId];

    final proposalKey = Transaction_ProposalKey(
        address: address,
        sequenceNumber: Int64(accountKey.sequenceNumber),
        keyId: keyId);

    final args = _prepareArguments(arguments);

    final transaction = Transaction(
        payer: address,
        script: utf8.encode(code),
        referenceBlockId: block.id,
        proposalKey: proposalKey,
        gasLimit: Int64(gasLimit),
        authorizers: [address],
        arguments: args);

    final signature = signData(transaction, privateKey);
    final envelopeSignature = Transaction_Signature(
        address: address, keyId: keyId, signature: signature);
    transaction.envelopeSignatures.insertAll(0, [envelopeSignature]);

    final request = SendTransactionRequest(transaction: transaction);
    return accessClient.sendTransaction(request);
  }

  Future<SendTransactionResponse> createAccount(
      {required String rawAddress,
      required String rawPrivateKey,
      int gasLimit = 9999}) async {
    final address = hex.decode(rawAddress);
    final privateKey = convertECDSAPrivateKey(rawPrivateKey);

    final block = (await getLatestBlock(true)).block;
    final account = (await getAccount(rawAddress)).account;
    const keyId = 0;
    final accountKey = account.keys[keyId];

    final proposalKey = Transaction_ProposalKey(
        address: address,
        sequenceNumber: Int64(accountKey.sequenceNumber),
        keyId: keyId);

    final keyPair = generateECDSAKeyPair();
    final newPrivateKey = keyPair.privateKey;
    final newPublicKey = keyPair.publicKey;

    final newAccountKey = AccountKey(
        publicKey: newPublicKey.Q!.getEncoded(false),
        hashAlgo: 3,
        signAlgo: 2,
        weight: 1000);

    final arg1 =
        CadenceContainerValue(type: CadenceContainerType.array, values: [
      CadenceValue(
          type: CadenceType.string,
          value: hex.encode(newAccountKey.rlpEncode()))
    ]);
    final arg2 = CadenceContainerValue(
        type: CadenceContainerType.dictionary, values: []);

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
        payer: address,
        script: utf8.encode(code),
        referenceBlockId: block.id,
        proposalKey: proposalKey,
        gasLimit: Int64(gasLimit),
        authorizers: [address],
        arguments: [arg1.toMessage(), arg2.toMessage()]);

    final signature = signData(transaction, privateKey);
    final envelopeSignature = Transaction_Signature(
        address: address, keyId: keyId, signature: signature);
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
