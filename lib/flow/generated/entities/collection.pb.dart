///
//  Generated code. Do not modify.
//  source: entities/collection.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Collection extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Collection', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.entities'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transactionIds', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  Collection._() : super();
  factory Collection({
    $core.List<$core.int>? id,
    $core.Iterable<$core.List<$core.int>>? transactionIds,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (transactionIds != null) {
      _result.transactionIds.addAll(transactionIds);
    }
    return _result;
  }
  factory Collection.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Collection.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Collection clone() => Collection()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Collection copyWith(void Function(Collection) updates) => super.copyWith((message) => updates(message as Collection)) as Collection; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Collection create() => Collection._();
  Collection createEmptyInstance() => create();
  static $pb.PbList<Collection> createRepeated() => $pb.PbList<Collection>();
  @$core.pragma('dart2js:noInline')
  static Collection getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Collection>(create);
  static Collection? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.List<$core.int>> get transactionIds => $_getList(1);
}

class CollectionGuarantee extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CollectionGuarantee', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flow.entities'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'collectionId', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signatures', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  CollectionGuarantee._() : super();
  factory CollectionGuarantee({
    $core.List<$core.int>? collectionId,
    $core.Iterable<$core.List<$core.int>>? signatures,
  }) {
    final _result = create();
    if (collectionId != null) {
      _result.collectionId = collectionId;
    }
    if (signatures != null) {
      _result.signatures.addAll(signatures);
    }
    return _result;
  }
  factory CollectionGuarantee.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CollectionGuarantee.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CollectionGuarantee clone() => CollectionGuarantee()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CollectionGuarantee copyWith(void Function(CollectionGuarantee) updates) => super.copyWith((message) => updates(message as CollectionGuarantee)) as CollectionGuarantee; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CollectionGuarantee create() => CollectionGuarantee._();
  CollectionGuarantee createEmptyInstance() => create();
  static $pb.PbList<CollectionGuarantee> createRepeated() => $pb.PbList<CollectionGuarantee>();
  @$core.pragma('dart2js:noInline')
  static CollectionGuarantee getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CollectionGuarantee>(create);
  static CollectionGuarantee? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get collectionId => $_getN(0);
  @$pb.TagNumber(1)
  set collectionId($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCollectionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCollectionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.List<$core.int>> get signatures => $_getList(1);
}

