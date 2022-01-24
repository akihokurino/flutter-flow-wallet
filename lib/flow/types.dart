import 'dart:convert';

import 'package:flutter_flow_wallet/flow/utils.dart';

enum CadenceType {
  string,
  int,
  int8,
  uInt,
  uFix64,
}

class CadenceValue {
  final CadenceType type;
  dynamic value;

  CadenceValue({this.value, required this.type});

  CadenceValue.fromJson(Map<String, dynamic> json)
      : type = enumFromString(CadenceType.values, json['type']),
        value = json['value'];

  Map<String, dynamic> toJson() =>
      {'type': type.toString().split('.').last, 'value': value.toString()};

  String toJsonString() {
    const newLine = "\n";
    return json.encode(toJson()) + newLine;
  }

  List<int> toMessage() {
    return utf8.encode(toJsonString());
  }
}
