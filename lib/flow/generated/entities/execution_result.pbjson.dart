///
//  Generated code. Do not modify.
//  source: entities/execution_result.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use executionResultDescriptor instead')
const ExecutionResult$json = const {
  '1': 'ExecutionResult',
  '2': const [
    const {'1': 'previous_result_id', '3': 1, '4': 1, '5': 12, '10': 'previousResultId'},
    const {'1': 'block_id', '3': 2, '4': 1, '5': 12, '10': 'blockId'},
    const {'1': 'chunks', '3': 3, '4': 3, '5': 11, '6': '.flow.entities.Chunk', '10': 'chunks'},
    const {'1': 'service_events', '3': 4, '4': 3, '5': 11, '6': '.flow.entities.ServiceEvent', '10': 'serviceEvents'},
  ],
};

/// Descriptor for `ExecutionResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List executionResultDescriptor = $convert.base64Decode('Cg9FeGVjdXRpb25SZXN1bHQSLAoScHJldmlvdXNfcmVzdWx0X2lkGAEgASgMUhBwcmV2aW91c1Jlc3VsdElkEhkKCGJsb2NrX2lkGAIgASgMUgdibG9ja0lkEiwKBmNodW5rcxgDIAMoCzIULmZsb3cuZW50aXRpZXMuQ2h1bmtSBmNodW5rcxJCCg5zZXJ2aWNlX2V2ZW50cxgEIAMoCzIbLmZsb3cuZW50aXRpZXMuU2VydmljZUV2ZW50Ug1zZXJ2aWNlRXZlbnRz');
@$core.Deprecated('Use chunkDescriptor instead')
const Chunk$json = const {
  '1': 'Chunk',
  '2': const [
    const {'1': 'CollectionIndex', '3': 1, '4': 1, '5': 13, '10': 'CollectionIndex'},
    const {'1': 'start_state', '3': 2, '4': 1, '5': 12, '10': 'startState'},
    const {'1': 'event_collection', '3': 3, '4': 1, '5': 12, '10': 'eventCollection'},
    const {'1': 'block_id', '3': 4, '4': 1, '5': 12, '10': 'blockId'},
    const {'1': 'total_computation_used', '3': 5, '4': 1, '5': 4, '10': 'totalComputationUsed'},
    const {'1': 'number_of_transactions', '3': 6, '4': 1, '5': 13, '10': 'numberOfTransactions'},
    const {'1': 'index', '3': 7, '4': 1, '5': 4, '10': 'index'},
    const {'1': 'end_state', '3': 8, '4': 1, '5': 12, '10': 'endState'},
  ],
};

/// Descriptor for `Chunk`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chunkDescriptor = $convert.base64Decode('CgVDaHVuaxIoCg9Db2xsZWN0aW9uSW5kZXgYASABKA1SD0NvbGxlY3Rpb25JbmRleBIfCgtzdGFydF9zdGF0ZRgCIAEoDFIKc3RhcnRTdGF0ZRIpChBldmVudF9jb2xsZWN0aW9uGAMgASgMUg9ldmVudENvbGxlY3Rpb24SGQoIYmxvY2tfaWQYBCABKAxSB2Jsb2NrSWQSNAoWdG90YWxfY29tcHV0YXRpb25fdXNlZBgFIAEoBFIUdG90YWxDb21wdXRhdGlvblVzZWQSNAoWbnVtYmVyX29mX3RyYW5zYWN0aW9ucxgGIAEoDVIUbnVtYmVyT2ZUcmFuc2FjdGlvbnMSFAoFaW5kZXgYByABKARSBWluZGV4EhsKCWVuZF9zdGF0ZRgIIAEoDFIIZW5kU3RhdGU=');
@$core.Deprecated('Use serviceEventDescriptor instead')
const ServiceEvent$json = const {
  '1': 'ServiceEvent',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'payload', '3': 2, '4': 1, '5': 12, '10': 'payload'},
  ],
};

/// Descriptor for `ServiceEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceEventDescriptor = $convert.base64Decode('CgxTZXJ2aWNlRXZlbnQSEgoEdHlwZRgBIAEoCVIEdHlwZRIYCgdwYXlsb2FkGAIgASgMUgdwYXlsb2Fk');
