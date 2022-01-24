///
//  Generated code. Do not modify.
//  source: entities/collection.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use collectionDescriptor instead')
const Collection$json = const {
  '1': 'Collection',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 12, '10': 'id'},
    const {'1': 'transaction_ids', '3': 2, '4': 3, '5': 12, '10': 'transactionIds'},
  ],
};

/// Descriptor for `Collection`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionDescriptor = $convert.base64Decode('CgpDb2xsZWN0aW9uEg4KAmlkGAEgASgMUgJpZBInCg90cmFuc2FjdGlvbl9pZHMYAiADKAxSDnRyYW5zYWN0aW9uSWRz');
@$core.Deprecated('Use collectionGuaranteeDescriptor instead')
const CollectionGuarantee$json = const {
  '1': 'CollectionGuarantee',
  '2': const [
    const {'1': 'collection_id', '3': 1, '4': 1, '5': 12, '10': 'collectionId'},
    const {'1': 'signatures', '3': 2, '4': 3, '5': 12, '10': 'signatures'},
  ],
};

/// Descriptor for `CollectionGuarantee`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionGuaranteeDescriptor = $convert.base64Decode('ChNDb2xsZWN0aW9uR3VhcmFudGVlEiMKDWNvbGxlY3Rpb25faWQYASABKAxSDGNvbGxlY3Rpb25JZBIeCgpzaWduYXR1cmVzGAIgAygMUgpzaWduYXR1cmVz');
