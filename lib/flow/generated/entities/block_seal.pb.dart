///
//  Generated code. Do not modify.
//  source: entities/block_seal.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class BlockSeal extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BlockSeal', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.entities'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockId', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'executionReceiptId', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'executionReceiptSignatures', $pb.PbFieldType.PY)
    ..p<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resultApprovalSignatures', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  BlockSeal._() : super();
  factory BlockSeal({
    $core.List<$core.int>? blockId,
    $core.List<$core.int>? executionReceiptId,
    $core.Iterable<$core.List<$core.int>>? executionReceiptSignatures,
    $core.Iterable<$core.List<$core.int>>? resultApprovalSignatures,
  }) {
    final _result = create();
    if (blockId != null) {
      _result.blockId = blockId;
    }
    if (executionReceiptId != null) {
      _result.executionReceiptId = executionReceiptId;
    }
    if (executionReceiptSignatures != null) {
      _result.executionReceiptSignatures.addAll(executionReceiptSignatures);
    }
    if (resultApprovalSignatures != null) {
      _result.resultApprovalSignatures.addAll(resultApprovalSignatures);
    }
    return _result;
  }
  factory BlockSeal.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlockSeal.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BlockSeal clone() => BlockSeal()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BlockSeal copyWith(void Function(BlockSeal) updates) => super.copyWith((message) => updates(message as BlockSeal)) as BlockSeal; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockSeal create() => BlockSeal._();
  BlockSeal createEmptyInstance() => create();
  static $pb.PbList<BlockSeal> createRepeated() => $pb.PbList<BlockSeal>();
  @$core.pragma('dart2js:noInline')
  static BlockSeal getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlockSeal>(create);
  static BlockSeal? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get blockId => $_getN(0);
  @$pb.TagNumber(1)
  set blockId($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBlockId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlockId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get executionReceiptId => $_getN(1);
  @$pb.TagNumber(2)
  set executionReceiptId($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasExecutionReceiptId() => $_has(1);
  @$pb.TagNumber(2)
  void clearExecutionReceiptId() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.List<$core.int>> get executionReceiptSignatures => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.List<$core.int>> get resultApprovalSignatures => $_getList(3);
}

