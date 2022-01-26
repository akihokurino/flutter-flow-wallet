import 'package:flutter_flow_wallet/flow/generated/entities/account.pb.dart';
import 'package:rlp/rlp.dart';

extension AccountKeyEncorder on AccountKey {
  List<int> rlpEncode() {
    return Rlp.encode([publicKey, signAlgo, hashAlgo, weight]);
  }
}
