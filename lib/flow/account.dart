import 'dart:typed_data';

import 'package:flutter_flow_wallet/flow/generated/entities/account.pb.dart';
import 'package:rlp/rlp.dart';

extension AccountKeyEncorder on AccountKey {
  List<int> rlpEncode() {
    final publicKeyData = Uint8List.fromList(publicKey);
    return Rlp.encode([publicKeyData, signAlgo, hashAlgo, weight]);
  }
}
