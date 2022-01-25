import 'dart:convert';

import 'package:flutter_flow_wallet/flow/generated/entities/account.pb.dart';
import 'package:rlp/rlp.dart';

enum CadenceType {
  string,
}

extension CadenceTypeString on CadenceType {
  String get str {
    switch (this) {
      case CadenceType.string:
        return 'String';
    }
  }
}

class CadenceValue {
  final CadenceType type;
  dynamic value;

  CadenceValue({required this.type, required this.value});

  Map<String, dynamic> toJson() =>
      {'type': type.str, 'value': value.toString()};

  String toJsonString() {
    const newLine = "\n";
    return json.encode(toJson()) + newLine;
  }

  List<int> toMessage() {
    return utf8.encode(toJsonString());
  }
}

enum CadenceContainerType { array, dictionary }

extension CadenceContainerTypeString on CadenceContainerType {
  String get str {
    switch (this) {
      case CadenceContainerType.array:
        return "Array";
      case CadenceContainerType.dictionary:
        return "Dictionary";
    }
  }
}

class CadenceContainerValue {
  final CadenceContainerType type;
  final List<CadenceValue> values;

  CadenceContainerValue({required this.type, required this.values});

  Map<String, dynamic> toJson() =>
      {'type': type.str, 'value': values.map((v) => v.toJson()).toList()};

  String toJsonString() {
    const newLine = "\n";
    return json.encode(toJson()) + newLine;
  }

  List<int> toMessage() {
    return utf8.encode(toJsonString());
  }
}

extension AccountKeyEncorder on AccountKey {
  List<int> rlpEncode() {
    return Rlp.encode([publicKey, signAlgo, hashAlgo, weight]);
  }
}
