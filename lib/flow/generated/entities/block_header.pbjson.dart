///
//  Generated code. Do not modify.
//  source: entities/block_header.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use blockHeaderDescriptor instead')
const BlockHeader$json = const {
  '1': 'BlockHeader',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 12, '10': 'id'},
    const {'1': 'parent_id', '3': 2, '4': 1, '5': 12, '10': 'parentId'},
    const {'1': 'height', '3': 3, '4': 1, '5': 4, '10': 'height'},
    const {'1': 'timestamp', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timestamp'},
  ],
};

/// Descriptor for `BlockHeader`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blockHeaderDescriptor = $convert.base64Decode('CgtCbG9ja0hlYWRlchIOCgJpZBgBIAEoDFICaWQSGwoJcGFyZW50X2lkGAIgASgMUghwYXJlbnRJZBIWCgZoZWlnaHQYAyABKARSBmhlaWdodBI4Cgl0aW1lc3RhbXAYBCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgl0aW1lc3RhbXA=');
