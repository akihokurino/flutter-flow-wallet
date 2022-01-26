import 'dart:convert';
import 'dart:typed_data';

import 'package:convert/convert.dart';
import 'package:flutter_flow_wallet/flow/generated/entities/transaction.pb.dart';
import "package:pointycastle/api.dart";
import 'package:pointycastle/digests/sha3.dart';
import "package:pointycastle/export.dart";
import 'package:pointycastle/src/impl/secure_random_base.dart';
import 'package:pointycastle/src/ufixnum.dart';
import 'package:rlp/rlp.dart';

const _domainTag = "FLOW-V0.0-transaction";

Uint8List signData(Transaction tx, ECPrivateKey privateKey) {
  List<int> data = [];
  data.insertAll(0, _signPayload(tx));
  data.insertAll(0, utf8.encode(_domainTag.padRight(32, "\x00")));

  final signer = ECDSASigner();
  signer.reset();
  signer.init(
      true,
      ParametersWithRandom(
          PrivateKeyParameter(privateKey), _NullSecureRandom()));

  final hashAlgo = SHA3Digest(256);
  final digest = hashAlgo.process(Uint8List.fromList(data));

  final ECSignature signature = signer.generateSignature(digest) as ECSignature;
  return _signatureToUInt8List(signature);
}

List<int> _signPayload(Transaction tx) {
  final payload = _transactionPayload(tx);

  final payloadSignatures = tx.payloadSignatures.asMap().entries.map((entry) {
    return [
      entry.key,
      entry.value.keyId,
      String.fromCharCodes(entry.value.signature)
    ];
  }).toList();

  final canonicalEnvelope = [payload, payloadSignatures];

  return Rlp.encode(canonicalEnvelope);
}

List<dynamic> _transactionPayload(Transaction tx) {
  final code = utf8.decode(tx.script);
  final arguments = tx.arguments.map((e) => utf8.decode(e)).toList();
  final refBlockId = _toBlockId(tx.referenceBlockId);
  final gasLimit = tx.gasLimit.hashCode;
  final proposerAddress = _toAddress(tx.proposalKey.address);
  final payerAddress = _toAddress(tx.payer);
  final keyId = tx.proposalKey.keyId;
  final sequenceNumber = tx.proposalKey.sequenceNumber.hashCode;
  final authorizers = tx.authorizers.map(_toAddress).toList();

  final payload = [
    code,
    arguments,
    refBlockId,
    gasLimit,
    proposerAddress,
    keyId,
    sequenceNumber,
    payerAddress,
    authorizers
  ];

  return payload;
}

class _NullSecureRandom extends SecureRandomBase {
  var _nextValue = 0;

  @override
  String get algorithmName => 'Null';

  @override
  void seed(CipherParameters params) {}

  @override
  int nextUint8() => clip8(_nextValue++);
}

Uint8List _signatureToUInt8List(ECSignature signature) {
  final r = _bigIntToByteData(signature.r, 32).buffer.asUint8List();
  final s = _bigIntToByteData(signature.s, 32).buffer.asUint8List();

  var result = Uint8List(64);
  for (var i = 0; i < 32; i++) {
    result[i] = r[i];
  }
  for (var i = 32; i < 64; i++) {
    result[i] = s[i - 32];
  }

  return result;
}

ByteData _bigIntToByteData(BigInt bigInt, int padding) {
  var data = ByteData(padding);
  var _bigInt = bigInt;

  for (var i = 1; i <= data.lengthInBytes; i++) {
    data.setUint8(data.lengthInBytes - i, _bigInt.toUnsigned(8).toInt());
    _bigInt = _bigInt >> 8;
  }

  return data;
}

Address _toAddress(List<int> address) {
  return Address(_withZeroPrefix(hex.encode(address)));
}

Address _toBlockId(List<int> blockId) {
  return Address("0x" + _padLeft(32, hex.encode(blockId)));
}

String _padLeft(int size, String value) {
  return value.padLeft(size * 2, "0");
}

String _withZeroPrefix(String address) {
  if (address.startsWith("0x")) {
    return "0x" + _padLeft(8, address.substring(2));
  }
  return "0x" + _padLeft(8, address);
}
