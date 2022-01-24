import 'package:convert/convert.dart';
import 'package:rlp/rlp.dart';

T enumFromString<T>(List<T> values, String value) {
  return values.firstWhere((v) => v.toString().split('.')[1] == value);
}

Address toAddress(List<int> address) {
  return Address(withZeroPrefix(hex.encode(address)));
}

Address toBlockId(List<int> blockId) {
  return Address("0x" + padLeft(32, hex.encode(blockId)));
}

String padLeft(int size, String value) {
  return value.padLeft(size * 2, "0");
}

String withZeroPrefix(String address) {
  if (address.startsWith("0x")) {
    return "0x" + padLeft(8, address.substring(2));
  }
  return "0x" + padLeft(8, address);
}

String sansZeroPrefix(String address) {
  if (address.startsWith("0x")) {
    return padLeft(8, address.substring(2));
  }
  return padLeft(8, address);
}
