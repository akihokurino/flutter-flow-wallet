///
//  Generated code. Do not modify.
//  source: entities/transaction.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class TransactionStatus extends $pb.ProtobufEnum {
  static const TransactionStatus UNKNOWN = TransactionStatus._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN');
  static const TransactionStatus PENDING = TransactionStatus._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PENDING');
  static const TransactionStatus FINALIZED = TransactionStatus._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FINALIZED');
  static const TransactionStatus EXECUTED = TransactionStatus._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EXECUTED');
  static const TransactionStatus SEALED = TransactionStatus._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SEALED');
  static const TransactionStatus EXPIRED = TransactionStatus._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EXPIRED');

  static const $core.List<TransactionStatus> values = <TransactionStatus> [
    UNKNOWN,
    PENDING,
    FINALIZED,
    EXECUTED,
    SEALED,
    EXPIRED,
  ];

  static final $core.Map<$core.int, TransactionStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TransactionStatus? valueOf($core.int value) => _byValue[value];

  const TransactionStatus._($core.int v, $core.String n) : super(v, n);
}

