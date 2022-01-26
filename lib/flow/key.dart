import 'dart:math';
import 'dart:typed_data';

import "package:pointycastle/api.dart";
import "package:pointycastle/export.dart";
import "package:pointycastle/key_generators/api.dart";

AsymmetricKeyPair<RSAPublicKey, RSAPrivateKey> generateRSAKeyPair(
    {int bitLength = 2048}) {
  final keyGen = RSAKeyGenerator()
    ..init(ParametersWithRandom(
        RSAKeyGeneratorParameters(BigInt.parse('65537'), bitLength, 64),
        _secureRandom()));

  final pair = keyGen.generateKeyPair();
  final myPublic = pair.publicKey as RSAPublicKey;
  final myPrivate = pair.privateKey as RSAPrivateKey;

  return AsymmetricKeyPair<RSAPublicKey, RSAPrivateKey>(myPublic, myPrivate);
}

ECPrivateKey convertECDSAPrivateKey(String from) {
  return ECPrivateKey(
      BigInt.parse(from, radix: 16), ECDomainParameters('prime256v1'));
}

SecureRandom _secureRandom() {
  final secureRandom = FortunaRandom();

  final seedSource = Random.secure();
  final seeds = <int>[];
  for (int i = 0; i < 32; i++) {
    seeds.add(seedSource.nextInt(255));
  }
  secureRandom.seed(KeyParameter(Uint8List.fromList(seeds)));

  return secureRandom;
}
