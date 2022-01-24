import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_flow_wallet/flow/fcl.dart';
import "package:pointycastle/api.dart";
import 'package:pointycastle/digests/sha3.dart';
import "package:pointycastle/export.dart";
import "package:pointycastle/key_generators/api.dart";
import 'package:pointycastle/src/impl/secure_random_base.dart';
import 'package:pointycastle/src/registry/registry.dart';
import 'package:pointycastle/src/ufixnum.dart';

Uint8List signData(List<int> input, String privateKey) {
  List<int> data = [];
  data.insertAll(0, input);
  data.insertAll(0, utf8.encode(FlowClient.domainTag.padRight(32, "\x00")));

  var privateParameters = PrivateKeyParameter(ECPrivateKey(
      BigInt.parse(privateKey, radix: 16), ECDomainParameters('prime256v1')));

  var signer = ECDSASigner();
  signer.reset();
  signer.init(
      true, ParametersWithRandom(privateParameters, NullSecureRandom()));

  var hasher = SHA3Digest(256);
  final digest = hasher.process(Uint8List.fromList(data));

  final ECSignature signature = signer.generateSignature(digest) as ECSignature;
  return signatureToUint8List(signature);
}

class NullSecureRandom extends SecureRandomBase {
  static final FactoryConfig factoryConfig =
      StaticFactoryConfig(SecureRandom, 'Null', () => NullSecureRandom());

  var _nextValue = 0;

  @override
  String get algorithmName => 'Null';

  @override
  void seed(CipherParameters params) {}

  @override
  int nextUint8() => clip8(_nextValue++);
}

AsymmetricKeyPair<RSAPublicKey, RSAPrivateKey> generateRSAkeyPair(
    SecureRandom secureRandom,
    {int bitLength = 2048}) {
  // Create an RSA key generator and initialize it

  final keyGen = RSAKeyGenerator()
    ..init(ParametersWithRandom(
        RSAKeyGeneratorParameters(BigInt.parse('65537'), bitLength, 64),
        secureRandom));

  // Use the generator

  final pair = keyGen.generateKeyPair();

  // Cast the generated key pair into the RSA key types

  final myPublic = pair.publicKey as RSAPublicKey;
  final myPrivate = pair.privateKey as RSAPrivateKey;

  return AsymmetricKeyPair<RSAPublicKey, RSAPrivateKey>(myPublic, myPrivate);
}

Uint8List signatureToUint8List(ECSignature signature) {
  final r = bigIntToByteData(signature.r, 32).buffer.asUint8List();
  final s = bigIntToByteData(signature.s, 32).buffer.asUint8List();

  var result = Uint8List(64);

  for (var i = 0; i < 32; i++) {
    result[i] = r[i];
  }
  for (var i = 32; i < 64; i++) {
    result[i] = s[i - 32];
  }

  return result;
}

/// Big thanks to Deniz Mert Edincik (https://github.com/bluesign)
/// for help invaluable help with transaction signing!
ByteData bigIntToByteData(BigInt bigInt, int padding) {
  var data = ByteData(padding);
  var _bigInt = bigInt;

  for (var i = 1; i <= data.lengthInBytes; i++) {
    data.setUint8(data.lengthInBytes - i, _bigInt.toUnsigned(8).toInt());
    _bigInt = _bigInt >> 8;
  }

  return data;
}
