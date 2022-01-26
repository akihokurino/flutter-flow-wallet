import 'package:basic_utils/basic_utils.dart';
import "package:pointycastle/api.dart";
import "package:pointycastle/export.dart";
import 'package:pointycastle/src/impl/secure_random_base.dart';
import 'package:pointycastle/src/ufixnum.dart';

const _curveName = "prime256v1";

AsymmetricKeyPair<ECPublicKey, ECPrivateKey> generateECDSAKeyPair(
    {int bitLength = 2048}) {
  final keyGen = ECKeyGenerator();
  final params = ParametersWithRandom(
      ECKeyGeneratorParameters(ECDomainParameters(_curveName)),
      NullSecureRandom());
  keyGen.init(params);
  final pair = keyGen.generateKeyPair();
  final publicKey = pair.publicKey as ECPublicKey;
  final privateKey = pair.privateKey as ECPrivateKey;

  return AsymmetricKeyPair<ECPublicKey, ECPrivateKey>(publicKey, privateKey);
}

ECPrivateKey convertECDSAPrivateKey(String from) {
  return ECPrivateKey(
      BigInt.parse(from, radix: 16), ECDomainParameters(_curveName));
}

ECPublicKey extractECDSAPublicKey(ECPrivateKey key) {
  return ECPublicKey(key.parameters!.G, ECDomainParameters(_curveName));
}

class NullSecureRandom extends SecureRandomBase {
  var _nextValue = 0;

  @override
  String get algorithmName => 'Null';

  @override
  void seed(CipherParameters params) {}

  @override
  int nextUint8() => clip8(_nextValue++);
}
