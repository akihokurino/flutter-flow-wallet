///
//  Generated code. Do not modify.
//  source: entities/block_seal.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use blockSealDescriptor instead')
const BlockSeal$json = const {
  '1': 'BlockSeal',
  '2': const [
    const {'1': 'block_id', '3': 1, '4': 1, '5': 12, '10': 'blockId'},
    const {'1': 'execution_receipt_id', '3': 2, '4': 1, '5': 12, '10': 'executionReceiptId'},
    const {'1': 'execution_receipt_signatures', '3': 3, '4': 3, '5': 12, '10': 'executionReceiptSignatures'},
    const {'1': 'result_approval_signatures', '3': 4, '4': 3, '5': 12, '10': 'resultApprovalSignatures'},
  ],
};

/// Descriptor for `BlockSeal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blockSealDescriptor = $convert.base64Decode('CglCbG9ja1NlYWwSGQoIYmxvY2tfaWQYASABKAxSB2Jsb2NrSWQSMAoUZXhlY3V0aW9uX3JlY2VpcHRfaWQYAiABKAxSEmV4ZWN1dGlvblJlY2VpcHRJZBJAChxleGVjdXRpb25fcmVjZWlwdF9zaWduYXR1cmVzGAMgAygMUhpleGVjdXRpb25SZWNlaXB0U2lnbmF0dXJlcxI8ChpyZXN1bHRfYXBwcm92YWxfc2lnbmF0dXJlcxgEIAMoDFIYcmVzdWx0QXBwcm92YWxTaWduYXR1cmVz');
