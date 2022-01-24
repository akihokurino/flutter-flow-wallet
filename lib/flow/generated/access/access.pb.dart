///
//  Generated code. Do not modify.
//  source: access/access.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../entities/block_header.pb.dart' as $5;
import '../entities/block.pb.dart' as $6;
import '../entities/collection.pb.dart' as $3;
import '../entities/transaction.pb.dart' as $7;
import '../entities/event.pb.dart' as $8;
import '../entities/account.pb.dart' as $9;
import '../google/protobuf/timestamp.pb.dart' as $2;
import '../entities/execution_result.pb.dart' as $10;

import '../entities/transaction.pbenum.dart' as $7;

class PingRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PingRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  PingRequest._() : super();
  factory PingRequest() => create();
  factory PingRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PingRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PingRequest clone() => PingRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PingRequest copyWith(void Function(PingRequest) updates) => super.copyWith((message) => updates(message as PingRequest)) as PingRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PingRequest create() => PingRequest._();
  PingRequest createEmptyInstance() => create();
  static $pb.PbList<PingRequest> createRepeated() => $pb.PbList<PingRequest>();
  @$core.pragma('dart2js:noInline')
  static PingRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PingRequest>(create);
  static PingRequest? _defaultInstance;
}

class PingResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PingResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  PingResponse._() : super();
  factory PingResponse() => create();
  factory PingResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PingResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PingResponse clone() => PingResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PingResponse copyWith(void Function(PingResponse) updates) => super.copyWith((message) => updates(message as PingResponse)) as PingResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PingResponse create() => PingResponse._();
  PingResponse createEmptyInstance() => create();
  static $pb.PbList<PingResponse> createRepeated() => $pb.PbList<PingResponse>();
  @$core.pragma('dart2js:noInline')
  static PingResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PingResponse>(create);
  static PingResponse? _defaultInstance;
}

class GetLatestBlockHeaderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetLatestBlockHeaderRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isSealed')
    ..hasRequiredFields = false
  ;

  GetLatestBlockHeaderRequest._() : super();
  factory GetLatestBlockHeaderRequest({
    $core.bool? isSealed,
  }) {
    final _result = create();
    if (isSealed != null) {
      _result.isSealed = isSealed;
    }
    return _result;
  }
  factory GetLatestBlockHeaderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLatestBlockHeaderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLatestBlockHeaderRequest clone() => GetLatestBlockHeaderRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLatestBlockHeaderRequest copyWith(void Function(GetLatestBlockHeaderRequest) updates) => super.copyWith((message) => updates(message as GetLatestBlockHeaderRequest)) as GetLatestBlockHeaderRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetLatestBlockHeaderRequest create() => GetLatestBlockHeaderRequest._();
  GetLatestBlockHeaderRequest createEmptyInstance() => create();
  static $pb.PbList<GetLatestBlockHeaderRequest> createRepeated() => $pb.PbList<GetLatestBlockHeaderRequest>();
  @$core.pragma('dart2js:noInline')
  static GetLatestBlockHeaderRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLatestBlockHeaderRequest>(create);
  static GetLatestBlockHeaderRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isSealed => $_getBF(0);
  @$pb.TagNumber(1)
  set isSealed($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsSealed() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsSealed() => clearField(1);
}

class GetBlockHeaderByIDRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetBlockHeaderByIDRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  GetBlockHeaderByIDRequest._() : super();
  factory GetBlockHeaderByIDRequest({
    $core.List<$core.int>? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetBlockHeaderByIDRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBlockHeaderByIDRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBlockHeaderByIDRequest clone() => GetBlockHeaderByIDRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBlockHeaderByIDRequest copyWith(void Function(GetBlockHeaderByIDRequest) updates) => super.copyWith((message) => updates(message as GetBlockHeaderByIDRequest)) as GetBlockHeaderByIDRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBlockHeaderByIDRequest create() => GetBlockHeaderByIDRequest._();
  GetBlockHeaderByIDRequest createEmptyInstance() => create();
  static $pb.PbList<GetBlockHeaderByIDRequest> createRepeated() => $pb.PbList<GetBlockHeaderByIDRequest>();
  @$core.pragma('dart2js:noInline')
  static GetBlockHeaderByIDRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBlockHeaderByIDRequest>(create);
  static GetBlockHeaderByIDRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetBlockHeaderByHeightRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetBlockHeaderByHeightRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'height', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  GetBlockHeaderByHeightRequest._() : super();
  factory GetBlockHeaderByHeightRequest({
    $fixnum.Int64? height,
  }) {
    final _result = create();
    if (height != null) {
      _result.height = height;
    }
    return _result;
  }
  factory GetBlockHeaderByHeightRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBlockHeaderByHeightRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBlockHeaderByHeightRequest clone() => GetBlockHeaderByHeightRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBlockHeaderByHeightRequest copyWith(void Function(GetBlockHeaderByHeightRequest) updates) => super.copyWith((message) => updates(message as GetBlockHeaderByHeightRequest)) as GetBlockHeaderByHeightRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBlockHeaderByHeightRequest create() => GetBlockHeaderByHeightRequest._();
  GetBlockHeaderByHeightRequest createEmptyInstance() => create();
  static $pb.PbList<GetBlockHeaderByHeightRequest> createRepeated() => $pb.PbList<GetBlockHeaderByHeightRequest>();
  @$core.pragma('dart2js:noInline')
  static GetBlockHeaderByHeightRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBlockHeaderByHeightRequest>(create);
  static GetBlockHeaderByHeightRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get height => $_getI64(0);
  @$pb.TagNumber(1)
  set height($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeight() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeight() => clearField(1);
}

class BlockHeaderResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BlockHeaderResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..aOM<$5.BlockHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'block', subBuilder: $5.BlockHeader.create)
    ..hasRequiredFields = false
  ;

  BlockHeaderResponse._() : super();
  factory BlockHeaderResponse({
    $5.BlockHeader? block,
  }) {
    final _result = create();
    if (block != null) {
      _result.block = block;
    }
    return _result;
  }
  factory BlockHeaderResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlockHeaderResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BlockHeaderResponse clone() => BlockHeaderResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BlockHeaderResponse copyWith(void Function(BlockHeaderResponse) updates) => super.copyWith((message) => updates(message as BlockHeaderResponse)) as BlockHeaderResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockHeaderResponse create() => BlockHeaderResponse._();
  BlockHeaderResponse createEmptyInstance() => create();
  static $pb.PbList<BlockHeaderResponse> createRepeated() => $pb.PbList<BlockHeaderResponse>();
  @$core.pragma('dart2js:noInline')
  static BlockHeaderResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlockHeaderResponse>(create);
  static BlockHeaderResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $5.BlockHeader get block => $_getN(0);
  @$pb.TagNumber(1)
  set block($5.BlockHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBlock() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlock() => clearField(1);
  @$pb.TagNumber(1)
  $5.BlockHeader ensureBlock() => $_ensure(0);
}

class GetLatestBlockRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetLatestBlockRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isSealed')
    ..hasRequiredFields = false
  ;

  GetLatestBlockRequest._() : super();
  factory GetLatestBlockRequest({
    $core.bool? isSealed,
  }) {
    final _result = create();
    if (isSealed != null) {
      _result.isSealed = isSealed;
    }
    return _result;
  }
  factory GetLatestBlockRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLatestBlockRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLatestBlockRequest clone() => GetLatestBlockRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLatestBlockRequest copyWith(void Function(GetLatestBlockRequest) updates) => super.copyWith((message) => updates(message as GetLatestBlockRequest)) as GetLatestBlockRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetLatestBlockRequest create() => GetLatestBlockRequest._();
  GetLatestBlockRequest createEmptyInstance() => create();
  static $pb.PbList<GetLatestBlockRequest> createRepeated() => $pb.PbList<GetLatestBlockRequest>();
  @$core.pragma('dart2js:noInline')
  static GetLatestBlockRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLatestBlockRequest>(create);
  static GetLatestBlockRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isSealed => $_getBF(0);
  @$pb.TagNumber(1)
  set isSealed($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsSealed() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsSealed() => clearField(1);
}

class GetBlockByIDRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetBlockByIDRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  GetBlockByIDRequest._() : super();
  factory GetBlockByIDRequest({
    $core.List<$core.int>? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetBlockByIDRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBlockByIDRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBlockByIDRequest clone() => GetBlockByIDRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBlockByIDRequest copyWith(void Function(GetBlockByIDRequest) updates) => super.copyWith((message) => updates(message as GetBlockByIDRequest)) as GetBlockByIDRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBlockByIDRequest create() => GetBlockByIDRequest._();
  GetBlockByIDRequest createEmptyInstance() => create();
  static $pb.PbList<GetBlockByIDRequest> createRepeated() => $pb.PbList<GetBlockByIDRequest>();
  @$core.pragma('dart2js:noInline')
  static GetBlockByIDRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBlockByIDRequest>(create);
  static GetBlockByIDRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetBlockByHeightRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetBlockByHeightRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'height', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  GetBlockByHeightRequest._() : super();
  factory GetBlockByHeightRequest({
    $fixnum.Int64? height,
  }) {
    final _result = create();
    if (height != null) {
      _result.height = height;
    }
    return _result;
  }
  factory GetBlockByHeightRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBlockByHeightRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBlockByHeightRequest clone() => GetBlockByHeightRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBlockByHeightRequest copyWith(void Function(GetBlockByHeightRequest) updates) => super.copyWith((message) => updates(message as GetBlockByHeightRequest)) as GetBlockByHeightRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBlockByHeightRequest create() => GetBlockByHeightRequest._();
  GetBlockByHeightRequest createEmptyInstance() => create();
  static $pb.PbList<GetBlockByHeightRequest> createRepeated() => $pb.PbList<GetBlockByHeightRequest>();
  @$core.pragma('dart2js:noInline')
  static GetBlockByHeightRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBlockByHeightRequest>(create);
  static GetBlockByHeightRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get height => $_getI64(0);
  @$pb.TagNumber(1)
  set height($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeight() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeight() => clearField(1);
}

class BlockResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BlockResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..aOM<$6.Block>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'block', subBuilder: $6.Block.create)
    ..hasRequiredFields = false
  ;

  BlockResponse._() : super();
  factory BlockResponse({
    $6.Block? block,
  }) {
    final _result = create();
    if (block != null) {
      _result.block = block;
    }
    return _result;
  }
  factory BlockResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlockResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BlockResponse clone() => BlockResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BlockResponse copyWith(void Function(BlockResponse) updates) => super.copyWith((message) => updates(message as BlockResponse)) as BlockResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockResponse create() => BlockResponse._();
  BlockResponse createEmptyInstance() => create();
  static $pb.PbList<BlockResponse> createRepeated() => $pb.PbList<BlockResponse>();
  @$core.pragma('dart2js:noInline')
  static BlockResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlockResponse>(create);
  static BlockResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $6.Block get block => $_getN(0);
  @$pb.TagNumber(1)
  set block($6.Block v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBlock() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlock() => clearField(1);
  @$pb.TagNumber(1)
  $6.Block ensureBlock() => $_ensure(0);
}

class GetCollectionByIDRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetCollectionByIDRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  GetCollectionByIDRequest._() : super();
  factory GetCollectionByIDRequest({
    $core.List<$core.int>? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetCollectionByIDRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCollectionByIDRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCollectionByIDRequest clone() => GetCollectionByIDRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCollectionByIDRequest copyWith(void Function(GetCollectionByIDRequest) updates) => super.copyWith((message) => updates(message as GetCollectionByIDRequest)) as GetCollectionByIDRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetCollectionByIDRequest create() => GetCollectionByIDRequest._();
  GetCollectionByIDRequest createEmptyInstance() => create();
  static $pb.PbList<GetCollectionByIDRequest> createRepeated() => $pb.PbList<GetCollectionByIDRequest>();
  @$core.pragma('dart2js:noInline')
  static GetCollectionByIDRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCollectionByIDRequest>(create);
  static GetCollectionByIDRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class CollectionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CollectionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..aOM<$3.Collection>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'collection', subBuilder: $3.Collection.create)
    ..hasRequiredFields = false
  ;

  CollectionResponse._() : super();
  factory CollectionResponse({
    $3.Collection? collection,
  }) {
    final _result = create();
    if (collection != null) {
      _result.collection = collection;
    }
    return _result;
  }
  factory CollectionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CollectionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CollectionResponse clone() => CollectionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CollectionResponse copyWith(void Function(CollectionResponse) updates) => super.copyWith((message) => updates(message as CollectionResponse)) as CollectionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CollectionResponse create() => CollectionResponse._();
  CollectionResponse createEmptyInstance() => create();
  static $pb.PbList<CollectionResponse> createRepeated() => $pb.PbList<CollectionResponse>();
  @$core.pragma('dart2js:noInline')
  static CollectionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CollectionResponse>(create);
  static CollectionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $3.Collection get collection => $_getN(0);
  @$pb.TagNumber(1)
  set collection($3.Collection v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCollection() => $_has(0);
  @$pb.TagNumber(1)
  void clearCollection() => clearField(1);
  @$pb.TagNumber(1)
  $3.Collection ensureCollection() => $_ensure(0);
}

class SendTransactionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SendTransactionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..aOM<$7.Transaction>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transaction', subBuilder: $7.Transaction.create)
    ..hasRequiredFields = false
  ;

  SendTransactionRequest._() : super();
  factory SendTransactionRequest({
    $7.Transaction? transaction,
  }) {
    final _result = create();
    if (transaction != null) {
      _result.transaction = transaction;
    }
    return _result;
  }
  factory SendTransactionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendTransactionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendTransactionRequest clone() => SendTransactionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendTransactionRequest copyWith(void Function(SendTransactionRequest) updates) => super.copyWith((message) => updates(message as SendTransactionRequest)) as SendTransactionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendTransactionRequest create() => SendTransactionRequest._();
  SendTransactionRequest createEmptyInstance() => create();
  static $pb.PbList<SendTransactionRequest> createRepeated() => $pb.PbList<SendTransactionRequest>();
  @$core.pragma('dart2js:noInline')
  static SendTransactionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendTransactionRequest>(create);
  static SendTransactionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $7.Transaction get transaction => $_getN(0);
  @$pb.TagNumber(1)
  set transaction($7.Transaction v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTransaction() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransaction() => clearField(1);
  @$pb.TagNumber(1)
  $7.Transaction ensureTransaction() => $_ensure(0);
}

class SendTransactionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SendTransactionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  SendTransactionResponse._() : super();
  factory SendTransactionResponse({
    $core.List<$core.int>? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory SendTransactionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendTransactionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendTransactionResponse clone() => SendTransactionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendTransactionResponse copyWith(void Function(SendTransactionResponse) updates) => super.copyWith((message) => updates(message as SendTransactionResponse)) as SendTransactionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendTransactionResponse create() => SendTransactionResponse._();
  SendTransactionResponse createEmptyInstance() => create();
  static $pb.PbList<SendTransactionResponse> createRepeated() => $pb.PbList<SendTransactionResponse>();
  @$core.pragma('dart2js:noInline')
  static SendTransactionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendTransactionResponse>(create);
  static SendTransactionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetTransactionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetTransactionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  GetTransactionRequest._() : super();
  factory GetTransactionRequest({
    $core.List<$core.int>? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetTransactionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTransactionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTransactionRequest clone() => GetTransactionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTransactionRequest copyWith(void Function(GetTransactionRequest) updates) => super.copyWith((message) => updates(message as GetTransactionRequest)) as GetTransactionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTransactionRequest create() => GetTransactionRequest._();
  GetTransactionRequest createEmptyInstance() => create();
  static $pb.PbList<GetTransactionRequest> createRepeated() => $pb.PbList<GetTransactionRequest>();
  @$core.pragma('dart2js:noInline')
  static GetTransactionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTransactionRequest>(create);
  static GetTransactionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class TransactionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TransactionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..aOM<$7.Transaction>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transaction', subBuilder: $7.Transaction.create)
    ..hasRequiredFields = false
  ;

  TransactionResponse._() : super();
  factory TransactionResponse({
    $7.Transaction? transaction,
  }) {
    final _result = create();
    if (transaction != null) {
      _result.transaction = transaction;
    }
    return _result;
  }
  factory TransactionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransactionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransactionResponse clone() => TransactionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransactionResponse copyWith(void Function(TransactionResponse) updates) => super.copyWith((message) => updates(message as TransactionResponse)) as TransactionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransactionResponse create() => TransactionResponse._();
  TransactionResponse createEmptyInstance() => create();
  static $pb.PbList<TransactionResponse> createRepeated() => $pb.PbList<TransactionResponse>();
  @$core.pragma('dart2js:noInline')
  static TransactionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransactionResponse>(create);
  static TransactionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $7.Transaction get transaction => $_getN(0);
  @$pb.TagNumber(1)
  set transaction($7.Transaction v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTransaction() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransaction() => clearField(1);
  @$pb.TagNumber(1)
  $7.Transaction ensureTransaction() => $_ensure(0);
}

class TransactionResultResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TransactionResultResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..e<$7.TransactionStatus>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: $7.TransactionStatus.UNKNOWN, valueOf: $7.TransactionStatus.valueOf, enumValues: $7.TransactionStatus.values)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'statusCode', $pb.PbFieldType.OU3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'errorMessage')
    ..pc<$8.Event>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'events', $pb.PbFieldType.PM, subBuilder: $8.Event.create)
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockId', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  TransactionResultResponse._() : super();
  factory TransactionResultResponse({
    $7.TransactionStatus? status,
    $core.int? statusCode,
    $core.String? errorMessage,
    $core.Iterable<$8.Event>? events,
    $core.List<$core.int>? blockId,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    if (statusCode != null) {
      _result.statusCode = statusCode;
    }
    if (errorMessage != null) {
      _result.errorMessage = errorMessage;
    }
    if (events != null) {
      _result.events.addAll(events);
    }
    if (blockId != null) {
      _result.blockId = blockId;
    }
    return _result;
  }
  factory TransactionResultResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransactionResultResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransactionResultResponse clone() => TransactionResultResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransactionResultResponse copyWith(void Function(TransactionResultResponse) updates) => super.copyWith((message) => updates(message as TransactionResultResponse)) as TransactionResultResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransactionResultResponse create() => TransactionResultResponse._();
  TransactionResultResponse createEmptyInstance() => create();
  static $pb.PbList<TransactionResultResponse> createRepeated() => $pb.PbList<TransactionResultResponse>();
  @$core.pragma('dart2js:noInline')
  static TransactionResultResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransactionResultResponse>(create);
  static TransactionResultResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $7.TransactionStatus get status => $_getN(0);
  @$pb.TagNumber(1)
  set status($7.TransactionStatus v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get statusCode => $_getIZ(1);
  @$pb.TagNumber(2)
  set statusCode($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatusCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatusCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get errorMessage => $_getSZ(2);
  @$pb.TagNumber(3)
  set errorMessage($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasErrorMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearErrorMessage() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$8.Event> get events => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$core.int> get blockId => $_getN(4);
  @$pb.TagNumber(5)
  set blockId($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBlockId() => $_has(4);
  @$pb.TagNumber(5)
  void clearBlockId() => clearField(5);
}

class GetAccountRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAccountRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  GetAccountRequest._() : super();
  factory GetAccountRequest({
    $core.List<$core.int>? address,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    return _result;
  }
  factory GetAccountRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAccountRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAccountRequest clone() => GetAccountRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAccountRequest copyWith(void Function(GetAccountRequest) updates) => super.copyWith((message) => updates(message as GetAccountRequest)) as GetAccountRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAccountRequest create() => GetAccountRequest._();
  GetAccountRequest createEmptyInstance() => create();
  static $pb.PbList<GetAccountRequest> createRepeated() => $pb.PbList<GetAccountRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAccountRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAccountRequest>(create);
  static GetAccountRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get address => $_getN(0);
  @$pb.TagNumber(1)
  set address($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);
}

class GetAccountResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAccountResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..aOM<$9.Account>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account', subBuilder: $9.Account.create)
    ..hasRequiredFields = false
  ;

  GetAccountResponse._() : super();
  factory GetAccountResponse({
    $9.Account? account,
  }) {
    final _result = create();
    if (account != null) {
      _result.account = account;
    }
    return _result;
  }
  factory GetAccountResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAccountResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAccountResponse clone() => GetAccountResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAccountResponse copyWith(void Function(GetAccountResponse) updates) => super.copyWith((message) => updates(message as GetAccountResponse)) as GetAccountResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAccountResponse create() => GetAccountResponse._();
  GetAccountResponse createEmptyInstance() => create();
  static $pb.PbList<GetAccountResponse> createRepeated() => $pb.PbList<GetAccountResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAccountResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAccountResponse>(create);
  static GetAccountResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $9.Account get account => $_getN(0);
  @$pb.TagNumber(1)
  set account($9.Account v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccount() => clearField(1);
  @$pb.TagNumber(1)
  $9.Account ensureAccount() => $_ensure(0);
}

class GetAccountAtLatestBlockRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAccountAtLatestBlockRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  GetAccountAtLatestBlockRequest._() : super();
  factory GetAccountAtLatestBlockRequest({
    $core.List<$core.int>? address,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    return _result;
  }
  factory GetAccountAtLatestBlockRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAccountAtLatestBlockRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAccountAtLatestBlockRequest clone() => GetAccountAtLatestBlockRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAccountAtLatestBlockRequest copyWith(void Function(GetAccountAtLatestBlockRequest) updates) => super.copyWith((message) => updates(message as GetAccountAtLatestBlockRequest)) as GetAccountAtLatestBlockRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAccountAtLatestBlockRequest create() => GetAccountAtLatestBlockRequest._();
  GetAccountAtLatestBlockRequest createEmptyInstance() => create();
  static $pb.PbList<GetAccountAtLatestBlockRequest> createRepeated() => $pb.PbList<GetAccountAtLatestBlockRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAccountAtLatestBlockRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAccountAtLatestBlockRequest>(create);
  static GetAccountAtLatestBlockRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get address => $_getN(0);
  @$pb.TagNumber(1)
  set address($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);
}

class AccountResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..aOM<$9.Account>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account', subBuilder: $9.Account.create)
    ..hasRequiredFields = false
  ;

  AccountResponse._() : super();
  factory AccountResponse({
    $9.Account? account,
  }) {
    final _result = create();
    if (account != null) {
      _result.account = account;
    }
    return _result;
  }
  factory AccountResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountResponse clone() => AccountResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountResponse copyWith(void Function(AccountResponse) updates) => super.copyWith((message) => updates(message as AccountResponse)) as AccountResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountResponse create() => AccountResponse._();
  AccountResponse createEmptyInstance() => create();
  static $pb.PbList<AccountResponse> createRepeated() => $pb.PbList<AccountResponse>();
  @$core.pragma('dart2js:noInline')
  static AccountResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountResponse>(create);
  static AccountResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $9.Account get account => $_getN(0);
  @$pb.TagNumber(1)
  set account($9.Account v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccount() => clearField(1);
  @$pb.TagNumber(1)
  $9.Account ensureAccount() => $_ensure(0);
}

class GetAccountAtBlockHeightRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAccountAtBlockHeightRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockHeight', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  GetAccountAtBlockHeightRequest._() : super();
  factory GetAccountAtBlockHeightRequest({
    $core.List<$core.int>? address,
    $fixnum.Int64? blockHeight,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (blockHeight != null) {
      _result.blockHeight = blockHeight;
    }
    return _result;
  }
  factory GetAccountAtBlockHeightRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAccountAtBlockHeightRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAccountAtBlockHeightRequest clone() => GetAccountAtBlockHeightRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAccountAtBlockHeightRequest copyWith(void Function(GetAccountAtBlockHeightRequest) updates) => super.copyWith((message) => updates(message as GetAccountAtBlockHeightRequest)) as GetAccountAtBlockHeightRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAccountAtBlockHeightRequest create() => GetAccountAtBlockHeightRequest._();
  GetAccountAtBlockHeightRequest createEmptyInstance() => create();
  static $pb.PbList<GetAccountAtBlockHeightRequest> createRepeated() => $pb.PbList<GetAccountAtBlockHeightRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAccountAtBlockHeightRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAccountAtBlockHeightRequest>(create);
  static GetAccountAtBlockHeightRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get address => $_getN(0);
  @$pb.TagNumber(1)
  set address($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get blockHeight => $_getI64(1);
  @$pb.TagNumber(2)
  set blockHeight($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBlockHeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlockHeight() => clearField(2);
}

class ExecuteScriptAtLatestBlockRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ExecuteScriptAtLatestBlockRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'script', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'arguments', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  ExecuteScriptAtLatestBlockRequest._() : super();
  factory ExecuteScriptAtLatestBlockRequest({
    $core.List<$core.int>? script,
    $core.Iterable<$core.List<$core.int>>? arguments,
  }) {
    final _result = create();
    if (script != null) {
      _result.script = script;
    }
    if (arguments != null) {
      _result.arguments.addAll(arguments);
    }
    return _result;
  }
  factory ExecuteScriptAtLatestBlockRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExecuteScriptAtLatestBlockRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExecuteScriptAtLatestBlockRequest clone() => ExecuteScriptAtLatestBlockRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExecuteScriptAtLatestBlockRequest copyWith(void Function(ExecuteScriptAtLatestBlockRequest) updates) => super.copyWith((message) => updates(message as ExecuteScriptAtLatestBlockRequest)) as ExecuteScriptAtLatestBlockRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExecuteScriptAtLatestBlockRequest create() => ExecuteScriptAtLatestBlockRequest._();
  ExecuteScriptAtLatestBlockRequest createEmptyInstance() => create();
  static $pb.PbList<ExecuteScriptAtLatestBlockRequest> createRepeated() => $pb.PbList<ExecuteScriptAtLatestBlockRequest>();
  @$core.pragma('dart2js:noInline')
  static ExecuteScriptAtLatestBlockRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExecuteScriptAtLatestBlockRequest>(create);
  static ExecuteScriptAtLatestBlockRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get script => $_getN(0);
  @$pb.TagNumber(1)
  set script($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasScript() => $_has(0);
  @$pb.TagNumber(1)
  void clearScript() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.List<$core.int>> get arguments => $_getList(1);
}

class ExecuteScriptAtBlockIDRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ExecuteScriptAtBlockIDRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockId', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'script', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'arguments', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  ExecuteScriptAtBlockIDRequest._() : super();
  factory ExecuteScriptAtBlockIDRequest({
    $core.List<$core.int>? blockId,
    $core.List<$core.int>? script,
    $core.Iterable<$core.List<$core.int>>? arguments,
  }) {
    final _result = create();
    if (blockId != null) {
      _result.blockId = blockId;
    }
    if (script != null) {
      _result.script = script;
    }
    if (arguments != null) {
      _result.arguments.addAll(arguments);
    }
    return _result;
  }
  factory ExecuteScriptAtBlockIDRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExecuteScriptAtBlockIDRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExecuteScriptAtBlockIDRequest clone() => ExecuteScriptAtBlockIDRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExecuteScriptAtBlockIDRequest copyWith(void Function(ExecuteScriptAtBlockIDRequest) updates) => super.copyWith((message) => updates(message as ExecuteScriptAtBlockIDRequest)) as ExecuteScriptAtBlockIDRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExecuteScriptAtBlockIDRequest create() => ExecuteScriptAtBlockIDRequest._();
  ExecuteScriptAtBlockIDRequest createEmptyInstance() => create();
  static $pb.PbList<ExecuteScriptAtBlockIDRequest> createRepeated() => $pb.PbList<ExecuteScriptAtBlockIDRequest>();
  @$core.pragma('dart2js:noInline')
  static ExecuteScriptAtBlockIDRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExecuteScriptAtBlockIDRequest>(create);
  static ExecuteScriptAtBlockIDRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get blockId => $_getN(0);
  @$pb.TagNumber(1)
  set blockId($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBlockId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlockId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get script => $_getN(1);
  @$pb.TagNumber(2)
  set script($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasScript() => $_has(1);
  @$pb.TagNumber(2)
  void clearScript() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.List<$core.int>> get arguments => $_getList(2);
}

class ExecuteScriptAtBlockHeightRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ExecuteScriptAtBlockHeightRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockHeight', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'script', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'arguments', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  ExecuteScriptAtBlockHeightRequest._() : super();
  factory ExecuteScriptAtBlockHeightRequest({
    $fixnum.Int64? blockHeight,
    $core.List<$core.int>? script,
    $core.Iterable<$core.List<$core.int>>? arguments,
  }) {
    final _result = create();
    if (blockHeight != null) {
      _result.blockHeight = blockHeight;
    }
    if (script != null) {
      _result.script = script;
    }
    if (arguments != null) {
      _result.arguments.addAll(arguments);
    }
    return _result;
  }
  factory ExecuteScriptAtBlockHeightRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExecuteScriptAtBlockHeightRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExecuteScriptAtBlockHeightRequest clone() => ExecuteScriptAtBlockHeightRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExecuteScriptAtBlockHeightRequest copyWith(void Function(ExecuteScriptAtBlockHeightRequest) updates) => super.copyWith((message) => updates(message as ExecuteScriptAtBlockHeightRequest)) as ExecuteScriptAtBlockHeightRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExecuteScriptAtBlockHeightRequest create() => ExecuteScriptAtBlockHeightRequest._();
  ExecuteScriptAtBlockHeightRequest createEmptyInstance() => create();
  static $pb.PbList<ExecuteScriptAtBlockHeightRequest> createRepeated() => $pb.PbList<ExecuteScriptAtBlockHeightRequest>();
  @$core.pragma('dart2js:noInline')
  static ExecuteScriptAtBlockHeightRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExecuteScriptAtBlockHeightRequest>(create);
  static ExecuteScriptAtBlockHeightRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get blockHeight => $_getI64(0);
  @$pb.TagNumber(1)
  set blockHeight($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBlockHeight() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlockHeight() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get script => $_getN(1);
  @$pb.TagNumber(2)
  set script($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasScript() => $_has(1);
  @$pb.TagNumber(2)
  void clearScript() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.List<$core.int>> get arguments => $_getList(2);
}

class ExecuteScriptResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ExecuteScriptResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  ExecuteScriptResponse._() : super();
  factory ExecuteScriptResponse({
    $core.List<$core.int>? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory ExecuteScriptResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExecuteScriptResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExecuteScriptResponse clone() => ExecuteScriptResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExecuteScriptResponse copyWith(void Function(ExecuteScriptResponse) updates) => super.copyWith((message) => updates(message as ExecuteScriptResponse)) as ExecuteScriptResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExecuteScriptResponse create() => ExecuteScriptResponse._();
  ExecuteScriptResponse createEmptyInstance() => create();
  static $pb.PbList<ExecuteScriptResponse> createRepeated() => $pb.PbList<ExecuteScriptResponse>();
  @$core.pragma('dart2js:noInline')
  static ExecuteScriptResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExecuteScriptResponse>(create);
  static ExecuteScriptResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class GetEventsForHeightRangeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetEventsForHeightRangeRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startHeight', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endHeight', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  GetEventsForHeightRangeRequest._() : super();
  factory GetEventsForHeightRangeRequest({
    $core.String? type,
    $fixnum.Int64? startHeight,
    $fixnum.Int64? endHeight,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (startHeight != null) {
      _result.startHeight = startHeight;
    }
    if (endHeight != null) {
      _result.endHeight = endHeight;
    }
    return _result;
  }
  factory GetEventsForHeightRangeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetEventsForHeightRangeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetEventsForHeightRangeRequest clone() => GetEventsForHeightRangeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetEventsForHeightRangeRequest copyWith(void Function(GetEventsForHeightRangeRequest) updates) => super.copyWith((message) => updates(message as GetEventsForHeightRangeRequest)) as GetEventsForHeightRangeRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetEventsForHeightRangeRequest create() => GetEventsForHeightRangeRequest._();
  GetEventsForHeightRangeRequest createEmptyInstance() => create();
  static $pb.PbList<GetEventsForHeightRangeRequest> createRepeated() => $pb.PbList<GetEventsForHeightRangeRequest>();
  @$core.pragma('dart2js:noInline')
  static GetEventsForHeightRangeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetEventsForHeightRangeRequest>(create);
  static GetEventsForHeightRangeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get startHeight => $_getI64(1);
  @$pb.TagNumber(2)
  set startHeight($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStartHeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartHeight() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get endHeight => $_getI64(2);
  @$pb.TagNumber(3)
  set endHeight($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEndHeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndHeight() => clearField(3);
}

class GetEventsForBlockIDsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetEventsForBlockIDsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..p<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockIds', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  GetEventsForBlockIDsRequest._() : super();
  factory GetEventsForBlockIDsRequest({
    $core.String? type,
    $core.Iterable<$core.List<$core.int>>? blockIds,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (blockIds != null) {
      _result.blockIds.addAll(blockIds);
    }
    return _result;
  }
  factory GetEventsForBlockIDsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetEventsForBlockIDsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetEventsForBlockIDsRequest clone() => GetEventsForBlockIDsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetEventsForBlockIDsRequest copyWith(void Function(GetEventsForBlockIDsRequest) updates) => super.copyWith((message) => updates(message as GetEventsForBlockIDsRequest)) as GetEventsForBlockIDsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetEventsForBlockIDsRequest create() => GetEventsForBlockIDsRequest._();
  GetEventsForBlockIDsRequest createEmptyInstance() => create();
  static $pb.PbList<GetEventsForBlockIDsRequest> createRepeated() => $pb.PbList<GetEventsForBlockIDsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetEventsForBlockIDsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetEventsForBlockIDsRequest>(create);
  static GetEventsForBlockIDsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.List<$core.int>> get blockIds => $_getList(1);
}

class EventsResponse_Result extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EventsResponse.Result', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockId', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockHeight', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<$8.Event>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'events', $pb.PbFieldType.PM, subBuilder: $8.Event.create)
    ..aOM<$2.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockTimestamp', subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false
  ;

  EventsResponse_Result._() : super();
  factory EventsResponse_Result({
    $core.List<$core.int>? blockId,
    $fixnum.Int64? blockHeight,
    $core.Iterable<$8.Event>? events,
    $2.Timestamp? blockTimestamp,
  }) {
    final _result = create();
    if (blockId != null) {
      _result.blockId = blockId;
    }
    if (blockHeight != null) {
      _result.blockHeight = blockHeight;
    }
    if (events != null) {
      _result.events.addAll(events);
    }
    if (blockTimestamp != null) {
      _result.blockTimestamp = blockTimestamp;
    }
    return _result;
  }
  factory EventsResponse_Result.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventsResponse_Result.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EventsResponse_Result clone() => EventsResponse_Result()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EventsResponse_Result copyWith(void Function(EventsResponse_Result) updates) => super.copyWith((message) => updates(message as EventsResponse_Result)) as EventsResponse_Result; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventsResponse_Result create() => EventsResponse_Result._();
  EventsResponse_Result createEmptyInstance() => create();
  static $pb.PbList<EventsResponse_Result> createRepeated() => $pb.PbList<EventsResponse_Result>();
  @$core.pragma('dart2js:noInline')
  static EventsResponse_Result getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventsResponse_Result>(create);
  static EventsResponse_Result? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get blockId => $_getN(0);
  @$pb.TagNumber(1)
  set blockId($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBlockId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlockId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get blockHeight => $_getI64(1);
  @$pb.TagNumber(2)
  set blockHeight($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBlockHeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlockHeight() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$8.Event> get events => $_getList(2);

  @$pb.TagNumber(4)
  $2.Timestamp get blockTimestamp => $_getN(3);
  @$pb.TagNumber(4)
  set blockTimestamp($2.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasBlockTimestamp() => $_has(3);
  @$pb.TagNumber(4)
  void clearBlockTimestamp() => clearField(4);
  @$pb.TagNumber(4)
  $2.Timestamp ensureBlockTimestamp() => $_ensure(3);
}

class EventsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EventsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..pc<EventsResponse_Result>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'results', $pb.PbFieldType.PM, subBuilder: EventsResponse_Result.create)
    ..hasRequiredFields = false
  ;

  EventsResponse._() : super();
  factory EventsResponse({
    $core.Iterable<EventsResponse_Result>? results,
  }) {
    final _result = create();
    if (results != null) {
      _result.results.addAll(results);
    }
    return _result;
  }
  factory EventsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EventsResponse clone() => EventsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EventsResponse copyWith(void Function(EventsResponse) updates) => super.copyWith((message) => updates(message as EventsResponse)) as EventsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventsResponse create() => EventsResponse._();
  EventsResponse createEmptyInstance() => create();
  static $pb.PbList<EventsResponse> createRepeated() => $pb.PbList<EventsResponse>();
  @$core.pragma('dart2js:noInline')
  static EventsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventsResponse>(create);
  static EventsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<EventsResponse_Result> get results => $_getList(0);
}

class GetNetworkParametersRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetNetworkParametersRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetNetworkParametersRequest._() : super();
  factory GetNetworkParametersRequest() => create();
  factory GetNetworkParametersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetNetworkParametersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetNetworkParametersRequest clone() => GetNetworkParametersRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetNetworkParametersRequest copyWith(void Function(GetNetworkParametersRequest) updates) => super.copyWith((message) => updates(message as GetNetworkParametersRequest)) as GetNetworkParametersRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetNetworkParametersRequest create() => GetNetworkParametersRequest._();
  GetNetworkParametersRequest createEmptyInstance() => create();
  static $pb.PbList<GetNetworkParametersRequest> createRepeated() => $pb.PbList<GetNetworkParametersRequest>();
  @$core.pragma('dart2js:noInline')
  static GetNetworkParametersRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetNetworkParametersRequest>(create);
  static GetNetworkParametersRequest? _defaultInstance;
}

class GetNetworkParametersResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetNetworkParametersResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chainId')
    ..hasRequiredFields = false
  ;

  GetNetworkParametersResponse._() : super();
  factory GetNetworkParametersResponse({
    $core.String? chainId,
  }) {
    final _result = create();
    if (chainId != null) {
      _result.chainId = chainId;
    }
    return _result;
  }
  factory GetNetworkParametersResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetNetworkParametersResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetNetworkParametersResponse clone() => GetNetworkParametersResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetNetworkParametersResponse copyWith(void Function(GetNetworkParametersResponse) updates) => super.copyWith((message) => updates(message as GetNetworkParametersResponse)) as GetNetworkParametersResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetNetworkParametersResponse create() => GetNetworkParametersResponse._();
  GetNetworkParametersResponse createEmptyInstance() => create();
  static $pb.PbList<GetNetworkParametersResponse> createRepeated() => $pb.PbList<GetNetworkParametersResponse>();
  @$core.pragma('dart2js:noInline')
  static GetNetworkParametersResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetNetworkParametersResponse>(create);
  static GetNetworkParametersResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get chainId => $_getSZ(0);
  @$pb.TagNumber(1)
  set chainId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChainId() => $_has(0);
  @$pb.TagNumber(1)
  void clearChainId() => clearField(1);
}

class GetLatestProtocolStateSnapshotRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetLatestProtocolStateSnapshotRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetLatestProtocolStateSnapshotRequest._() : super();
  factory GetLatestProtocolStateSnapshotRequest() => create();
  factory GetLatestProtocolStateSnapshotRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLatestProtocolStateSnapshotRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLatestProtocolStateSnapshotRequest clone() => GetLatestProtocolStateSnapshotRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLatestProtocolStateSnapshotRequest copyWith(void Function(GetLatestProtocolStateSnapshotRequest) updates) => super.copyWith((message) => updates(message as GetLatestProtocolStateSnapshotRequest)) as GetLatestProtocolStateSnapshotRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetLatestProtocolStateSnapshotRequest create() => GetLatestProtocolStateSnapshotRequest._();
  GetLatestProtocolStateSnapshotRequest createEmptyInstance() => create();
  static $pb.PbList<GetLatestProtocolStateSnapshotRequest> createRepeated() => $pb.PbList<GetLatestProtocolStateSnapshotRequest>();
  @$core.pragma('dart2js:noInline')
  static GetLatestProtocolStateSnapshotRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLatestProtocolStateSnapshotRequest>(create);
  static GetLatestProtocolStateSnapshotRequest? _defaultInstance;
}

class ProtocolStateSnapshotResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ProtocolStateSnapshotResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serializedSnapshot', $pb.PbFieldType.OY, protoName: 'serializedSnapshot')
    ..hasRequiredFields = false
  ;

  ProtocolStateSnapshotResponse._() : super();
  factory ProtocolStateSnapshotResponse({
    $core.List<$core.int>? serializedSnapshot,
  }) {
    final _result = create();
    if (serializedSnapshot != null) {
      _result.serializedSnapshot = serializedSnapshot;
    }
    return _result;
  }
  factory ProtocolStateSnapshotResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtocolStateSnapshotResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtocolStateSnapshotResponse clone() => ProtocolStateSnapshotResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtocolStateSnapshotResponse copyWith(void Function(ProtocolStateSnapshotResponse) updates) => super.copyWith((message) => updates(message as ProtocolStateSnapshotResponse)) as ProtocolStateSnapshotResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ProtocolStateSnapshotResponse create() => ProtocolStateSnapshotResponse._();
  ProtocolStateSnapshotResponse createEmptyInstance() => create();
  static $pb.PbList<ProtocolStateSnapshotResponse> createRepeated() => $pb.PbList<ProtocolStateSnapshotResponse>();
  @$core.pragma('dart2js:noInline')
  static ProtocolStateSnapshotResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtocolStateSnapshotResponse>(create);
  static ProtocolStateSnapshotResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get serializedSnapshot => $_getN(0);
  @$pb.TagNumber(1)
  set serializedSnapshot($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSerializedSnapshot() => $_has(0);
  @$pb.TagNumber(1)
  void clearSerializedSnapshot() => clearField(1);
}

class GetExecutionResultForBlockIDRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetExecutionResultForBlockIDRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockId', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  GetExecutionResultForBlockIDRequest._() : super();
  factory GetExecutionResultForBlockIDRequest({
    $core.List<$core.int>? blockId,
  }) {
    final _result = create();
    if (blockId != null) {
      _result.blockId = blockId;
    }
    return _result;
  }
  factory GetExecutionResultForBlockIDRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetExecutionResultForBlockIDRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetExecutionResultForBlockIDRequest clone() => GetExecutionResultForBlockIDRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetExecutionResultForBlockIDRequest copyWith(void Function(GetExecutionResultForBlockIDRequest) updates) => super.copyWith((message) => updates(message as GetExecutionResultForBlockIDRequest)) as GetExecutionResultForBlockIDRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetExecutionResultForBlockIDRequest create() => GetExecutionResultForBlockIDRequest._();
  GetExecutionResultForBlockIDRequest createEmptyInstance() => create();
  static $pb.PbList<GetExecutionResultForBlockIDRequest> createRepeated() => $pb.PbList<GetExecutionResultForBlockIDRequest>();
  @$core.pragma('dart2js:noInline')
  static GetExecutionResultForBlockIDRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetExecutionResultForBlockIDRequest>(create);
  static GetExecutionResultForBlockIDRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get blockId => $_getN(0);
  @$pb.TagNumber(1)
  set blockId($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBlockId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlockId() => clearField(1);
}

class ExecutionResultForBlockIDResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ExecutionResultForBlockIDResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.access'), createEmptyInstance: create)
    ..aOM<$10.ExecutionResult>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'executionResult', subBuilder: $10.ExecutionResult.create)
    ..hasRequiredFields = false
  ;

  ExecutionResultForBlockIDResponse._() : super();
  factory ExecutionResultForBlockIDResponse({
    $10.ExecutionResult? executionResult,
  }) {
    final _result = create();
    if (executionResult != null) {
      _result.executionResult = executionResult;
    }
    return _result;
  }
  factory ExecutionResultForBlockIDResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExecutionResultForBlockIDResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExecutionResultForBlockIDResponse clone() => ExecutionResultForBlockIDResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExecutionResultForBlockIDResponse copyWith(void Function(ExecutionResultForBlockIDResponse) updates) => super.copyWith((message) => updates(message as ExecutionResultForBlockIDResponse)) as ExecutionResultForBlockIDResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExecutionResultForBlockIDResponse create() => ExecutionResultForBlockIDResponse._();
  ExecutionResultForBlockIDResponse createEmptyInstance() => create();
  static $pb.PbList<ExecutionResultForBlockIDResponse> createRepeated() => $pb.PbList<ExecutionResultForBlockIDResponse>();
  @$core.pragma('dart2js:noInline')
  static ExecutionResultForBlockIDResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExecutionResultForBlockIDResponse>(create);
  static ExecutionResultForBlockIDResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $10.ExecutionResult get executionResult => $_getN(0);
  @$pb.TagNumber(1)
  set executionResult($10.ExecutionResult v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasExecutionResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearExecutionResult() => clearField(1);
  @$pb.TagNumber(1)
  $10.ExecutionResult ensureExecutionResult() => $_ensure(0);
}

