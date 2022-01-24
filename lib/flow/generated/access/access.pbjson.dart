///
//  Generated code. Do not modify.
//  source: access/access.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use pingRequestDescriptor instead')
const PingRequest$json = const {
  '1': 'PingRequest',
};

/// Descriptor for `PingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingRequestDescriptor = $convert.base64Decode('CgtQaW5nUmVxdWVzdA==');
@$core.Deprecated('Use pingResponseDescriptor instead')
const PingResponse$json = const {
  '1': 'PingResponse',
};

/// Descriptor for `PingResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingResponseDescriptor = $convert.base64Decode('CgxQaW5nUmVzcG9uc2U=');
@$core.Deprecated('Use getLatestBlockHeaderRequestDescriptor instead')
const GetLatestBlockHeaderRequest$json = const {
  '1': 'GetLatestBlockHeaderRequest',
  '2': const [
    const {'1': 'is_sealed', '3': 1, '4': 1, '5': 8, '10': 'isSealed'},
  ],
};

/// Descriptor for `GetLatestBlockHeaderRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLatestBlockHeaderRequestDescriptor = $convert.base64Decode('ChtHZXRMYXRlc3RCbG9ja0hlYWRlclJlcXVlc3QSGwoJaXNfc2VhbGVkGAEgASgIUghpc1NlYWxlZA==');
@$core.Deprecated('Use getBlockHeaderByIDRequestDescriptor instead')
const GetBlockHeaderByIDRequest$json = const {
  '1': 'GetBlockHeaderByIDRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 12, '10': 'id'},
  ],
};

/// Descriptor for `GetBlockHeaderByIDRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBlockHeaderByIDRequestDescriptor = $convert.base64Decode('ChlHZXRCbG9ja0hlYWRlckJ5SURSZXF1ZXN0Eg4KAmlkGAEgASgMUgJpZA==');
@$core.Deprecated('Use getBlockHeaderByHeightRequestDescriptor instead')
const GetBlockHeaderByHeightRequest$json = const {
  '1': 'GetBlockHeaderByHeightRequest',
  '2': const [
    const {'1': 'height', '3': 1, '4': 1, '5': 4, '10': 'height'},
  ],
};

/// Descriptor for `GetBlockHeaderByHeightRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBlockHeaderByHeightRequestDescriptor = $convert.base64Decode('Ch1HZXRCbG9ja0hlYWRlckJ5SGVpZ2h0UmVxdWVzdBIWCgZoZWlnaHQYASABKARSBmhlaWdodA==');
@$core.Deprecated('Use blockHeaderResponseDescriptor instead')
const BlockHeaderResponse$json = const {
  '1': 'BlockHeaderResponse',
  '2': const [
    const {'1': 'block', '3': 1, '4': 1, '5': 11, '6': '.flow.entities.BlockHeader', '10': 'block'},
  ],
};

/// Descriptor for `BlockHeaderResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blockHeaderResponseDescriptor = $convert.base64Decode('ChNCbG9ja0hlYWRlclJlc3BvbnNlEjAKBWJsb2NrGAEgASgLMhouZmxvdy5lbnRpdGllcy5CbG9ja0hlYWRlclIFYmxvY2s=');
@$core.Deprecated('Use getLatestBlockRequestDescriptor instead')
const GetLatestBlockRequest$json = const {
  '1': 'GetLatestBlockRequest',
  '2': const [
    const {'1': 'is_sealed', '3': 1, '4': 1, '5': 8, '10': 'isSealed'},
  ],
};

/// Descriptor for `GetLatestBlockRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLatestBlockRequestDescriptor = $convert.base64Decode('ChVHZXRMYXRlc3RCbG9ja1JlcXVlc3QSGwoJaXNfc2VhbGVkGAEgASgIUghpc1NlYWxlZA==');
@$core.Deprecated('Use getBlockByIDRequestDescriptor instead')
const GetBlockByIDRequest$json = const {
  '1': 'GetBlockByIDRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 12, '10': 'id'},
  ],
};

/// Descriptor for `GetBlockByIDRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBlockByIDRequestDescriptor = $convert.base64Decode('ChNHZXRCbG9ja0J5SURSZXF1ZXN0Eg4KAmlkGAEgASgMUgJpZA==');
@$core.Deprecated('Use getBlockByHeightRequestDescriptor instead')
const GetBlockByHeightRequest$json = const {
  '1': 'GetBlockByHeightRequest',
  '2': const [
    const {'1': 'height', '3': 1, '4': 1, '5': 4, '10': 'height'},
  ],
};

/// Descriptor for `GetBlockByHeightRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBlockByHeightRequestDescriptor = $convert.base64Decode('ChdHZXRCbG9ja0J5SGVpZ2h0UmVxdWVzdBIWCgZoZWlnaHQYASABKARSBmhlaWdodA==');
@$core.Deprecated('Use blockResponseDescriptor instead')
const BlockResponse$json = const {
  '1': 'BlockResponse',
  '2': const [
    const {'1': 'block', '3': 1, '4': 1, '5': 11, '6': '.flow.entities.Block', '10': 'block'},
  ],
};

/// Descriptor for `BlockResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blockResponseDescriptor = $convert.base64Decode('Cg1CbG9ja1Jlc3BvbnNlEioKBWJsb2NrGAEgASgLMhQuZmxvdy5lbnRpdGllcy5CbG9ja1IFYmxvY2s=');
@$core.Deprecated('Use getCollectionByIDRequestDescriptor instead')
const GetCollectionByIDRequest$json = const {
  '1': 'GetCollectionByIDRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 12, '10': 'id'},
  ],
};

/// Descriptor for `GetCollectionByIDRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCollectionByIDRequestDescriptor = $convert.base64Decode('ChhHZXRDb2xsZWN0aW9uQnlJRFJlcXVlc3QSDgoCaWQYASABKAxSAmlk');
@$core.Deprecated('Use collectionResponseDescriptor instead')
const CollectionResponse$json = const {
  '1': 'CollectionResponse',
  '2': const [
    const {'1': 'collection', '3': 1, '4': 1, '5': 11, '6': '.flow.entities.Collection', '10': 'collection'},
  ],
};

/// Descriptor for `CollectionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionResponseDescriptor = $convert.base64Decode('ChJDb2xsZWN0aW9uUmVzcG9uc2USOQoKY29sbGVjdGlvbhgBIAEoCzIZLmZsb3cuZW50aXRpZXMuQ29sbGVjdGlvblIKY29sbGVjdGlvbg==');
@$core.Deprecated('Use sendTransactionRequestDescriptor instead')
const SendTransactionRequest$json = const {
  '1': 'SendTransactionRequest',
  '2': const [
    const {'1': 'transaction', '3': 1, '4': 1, '5': 11, '6': '.flow.entities.Transaction', '10': 'transaction'},
  ],
};

/// Descriptor for `SendTransactionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendTransactionRequestDescriptor = $convert.base64Decode('ChZTZW5kVHJhbnNhY3Rpb25SZXF1ZXN0EjwKC3RyYW5zYWN0aW9uGAEgASgLMhouZmxvdy5lbnRpdGllcy5UcmFuc2FjdGlvblILdHJhbnNhY3Rpb24=');
@$core.Deprecated('Use sendTransactionResponseDescriptor instead')
const SendTransactionResponse$json = const {
  '1': 'SendTransactionResponse',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 12, '10': 'id'},
  ],
};

/// Descriptor for `SendTransactionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendTransactionResponseDescriptor = $convert.base64Decode('ChdTZW5kVHJhbnNhY3Rpb25SZXNwb25zZRIOCgJpZBgBIAEoDFICaWQ=');
@$core.Deprecated('Use getTransactionRequestDescriptor instead')
const GetTransactionRequest$json = const {
  '1': 'GetTransactionRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 12, '10': 'id'},
  ],
};

/// Descriptor for `GetTransactionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTransactionRequestDescriptor = $convert.base64Decode('ChVHZXRUcmFuc2FjdGlvblJlcXVlc3QSDgoCaWQYASABKAxSAmlk');
@$core.Deprecated('Use transactionResponseDescriptor instead')
const TransactionResponse$json = const {
  '1': 'TransactionResponse',
  '2': const [
    const {'1': 'transaction', '3': 1, '4': 1, '5': 11, '6': '.flow.entities.Transaction', '10': 'transaction'},
  ],
};

/// Descriptor for `TransactionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionResponseDescriptor = $convert.base64Decode('ChNUcmFuc2FjdGlvblJlc3BvbnNlEjwKC3RyYW5zYWN0aW9uGAEgASgLMhouZmxvdy5lbnRpdGllcy5UcmFuc2FjdGlvblILdHJhbnNhY3Rpb24=');
@$core.Deprecated('Use transactionResultResponseDescriptor instead')
const TransactionResultResponse$json = const {
  '1': 'TransactionResultResponse',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.flow.entities.TransactionStatus', '10': 'status'},
    const {'1': 'status_code', '3': 2, '4': 1, '5': 13, '10': 'statusCode'},
    const {'1': 'error_message', '3': 3, '4': 1, '5': 9, '10': 'errorMessage'},
    const {'1': 'events', '3': 4, '4': 3, '5': 11, '6': '.flow.entities.Event', '10': 'events'},
    const {'1': 'block_id', '3': 5, '4': 1, '5': 12, '10': 'blockId'},
  ],
};

/// Descriptor for `TransactionResultResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionResultResponseDescriptor = $convert.base64Decode('ChlUcmFuc2FjdGlvblJlc3VsdFJlc3BvbnNlEjgKBnN0YXR1cxgBIAEoDjIgLmZsb3cuZW50aXRpZXMuVHJhbnNhY3Rpb25TdGF0dXNSBnN0YXR1cxIfCgtzdGF0dXNfY29kZRgCIAEoDVIKc3RhdHVzQ29kZRIjCg1lcnJvcl9tZXNzYWdlGAMgASgJUgxlcnJvck1lc3NhZ2USLAoGZXZlbnRzGAQgAygLMhQuZmxvdy5lbnRpdGllcy5FdmVudFIGZXZlbnRzEhkKCGJsb2NrX2lkGAUgASgMUgdibG9ja0lk');
@$core.Deprecated('Use getAccountRequestDescriptor instead')
const GetAccountRequest$json = const {
  '1': 'GetAccountRequest',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 12, '10': 'address'},
  ],
};

/// Descriptor for `GetAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountRequestDescriptor = $convert.base64Decode('ChFHZXRBY2NvdW50UmVxdWVzdBIYCgdhZGRyZXNzGAEgASgMUgdhZGRyZXNz');
@$core.Deprecated('Use getAccountResponseDescriptor instead')
const GetAccountResponse$json = const {
  '1': 'GetAccountResponse',
  '2': const [
    const {'1': 'account', '3': 1, '4': 1, '5': 11, '6': '.flow.entities.Account', '10': 'account'},
  ],
};

/// Descriptor for `GetAccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountResponseDescriptor = $convert.base64Decode('ChJHZXRBY2NvdW50UmVzcG9uc2USMAoHYWNjb3VudBgBIAEoCzIWLmZsb3cuZW50aXRpZXMuQWNjb3VudFIHYWNjb3VudA==');
@$core.Deprecated('Use getAccountAtLatestBlockRequestDescriptor instead')
const GetAccountAtLatestBlockRequest$json = const {
  '1': 'GetAccountAtLatestBlockRequest',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 12, '10': 'address'},
  ],
};

/// Descriptor for `GetAccountAtLatestBlockRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountAtLatestBlockRequestDescriptor = $convert.base64Decode('Ch5HZXRBY2NvdW50QXRMYXRlc3RCbG9ja1JlcXVlc3QSGAoHYWRkcmVzcxgBIAEoDFIHYWRkcmVzcw==');
@$core.Deprecated('Use accountResponseDescriptor instead')
const AccountResponse$json = const {
  '1': 'AccountResponse',
  '2': const [
    const {'1': 'account', '3': 1, '4': 1, '5': 11, '6': '.flow.entities.Account', '10': 'account'},
  ],
};

/// Descriptor for `AccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountResponseDescriptor = $convert.base64Decode('Cg9BY2NvdW50UmVzcG9uc2USMAoHYWNjb3VudBgBIAEoCzIWLmZsb3cuZW50aXRpZXMuQWNjb3VudFIHYWNjb3VudA==');
@$core.Deprecated('Use getAccountAtBlockHeightRequestDescriptor instead')
const GetAccountAtBlockHeightRequest$json = const {
  '1': 'GetAccountAtBlockHeightRequest',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 12, '10': 'address'},
    const {'1': 'block_height', '3': 2, '4': 1, '5': 4, '10': 'blockHeight'},
  ],
};

/// Descriptor for `GetAccountAtBlockHeightRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountAtBlockHeightRequestDescriptor = $convert.base64Decode('Ch5HZXRBY2NvdW50QXRCbG9ja0hlaWdodFJlcXVlc3QSGAoHYWRkcmVzcxgBIAEoDFIHYWRkcmVzcxIhCgxibG9ja19oZWlnaHQYAiABKARSC2Jsb2NrSGVpZ2h0');
@$core.Deprecated('Use executeScriptAtLatestBlockRequestDescriptor instead')
const ExecuteScriptAtLatestBlockRequest$json = const {
  '1': 'ExecuteScriptAtLatestBlockRequest',
  '2': const [
    const {'1': 'script', '3': 1, '4': 1, '5': 12, '10': 'script'},
    const {'1': 'arguments', '3': 2, '4': 3, '5': 12, '10': 'arguments'},
  ],
};

/// Descriptor for `ExecuteScriptAtLatestBlockRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List executeScriptAtLatestBlockRequestDescriptor = $convert.base64Decode('CiFFeGVjdXRlU2NyaXB0QXRMYXRlc3RCbG9ja1JlcXVlc3QSFgoGc2NyaXB0GAEgASgMUgZzY3JpcHQSHAoJYXJndW1lbnRzGAIgAygMUglhcmd1bWVudHM=');
@$core.Deprecated('Use executeScriptAtBlockIDRequestDescriptor instead')
const ExecuteScriptAtBlockIDRequest$json = const {
  '1': 'ExecuteScriptAtBlockIDRequest',
  '2': const [
    const {'1': 'block_id', '3': 1, '4': 1, '5': 12, '10': 'blockId'},
    const {'1': 'script', '3': 2, '4': 1, '5': 12, '10': 'script'},
    const {'1': 'arguments', '3': 3, '4': 3, '5': 12, '10': 'arguments'},
  ],
};

/// Descriptor for `ExecuteScriptAtBlockIDRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List executeScriptAtBlockIDRequestDescriptor = $convert.base64Decode('Ch1FeGVjdXRlU2NyaXB0QXRCbG9ja0lEUmVxdWVzdBIZCghibG9ja19pZBgBIAEoDFIHYmxvY2tJZBIWCgZzY3JpcHQYAiABKAxSBnNjcmlwdBIcCglhcmd1bWVudHMYAyADKAxSCWFyZ3VtZW50cw==');
@$core.Deprecated('Use executeScriptAtBlockHeightRequestDescriptor instead')
const ExecuteScriptAtBlockHeightRequest$json = const {
  '1': 'ExecuteScriptAtBlockHeightRequest',
  '2': const [
    const {'1': 'block_height', '3': 1, '4': 1, '5': 4, '10': 'blockHeight'},
    const {'1': 'script', '3': 2, '4': 1, '5': 12, '10': 'script'},
    const {'1': 'arguments', '3': 3, '4': 3, '5': 12, '10': 'arguments'},
  ],
};

/// Descriptor for `ExecuteScriptAtBlockHeightRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List executeScriptAtBlockHeightRequestDescriptor = $convert.base64Decode('CiFFeGVjdXRlU2NyaXB0QXRCbG9ja0hlaWdodFJlcXVlc3QSIQoMYmxvY2tfaGVpZ2h0GAEgASgEUgtibG9ja0hlaWdodBIWCgZzY3JpcHQYAiABKAxSBnNjcmlwdBIcCglhcmd1bWVudHMYAyADKAxSCWFyZ3VtZW50cw==');
@$core.Deprecated('Use executeScriptResponseDescriptor instead')
const ExecuteScriptResponse$json = const {
  '1': 'ExecuteScriptResponse',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 12, '10': 'value'},
  ],
};

/// Descriptor for `ExecuteScriptResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List executeScriptResponseDescriptor = $convert.base64Decode('ChVFeGVjdXRlU2NyaXB0UmVzcG9uc2USFAoFdmFsdWUYASABKAxSBXZhbHVl');
@$core.Deprecated('Use getEventsForHeightRangeRequestDescriptor instead')
const GetEventsForHeightRangeRequest$json = const {
  '1': 'GetEventsForHeightRangeRequest',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'start_height', '3': 2, '4': 1, '5': 4, '10': 'startHeight'},
    const {'1': 'end_height', '3': 3, '4': 1, '5': 4, '10': 'endHeight'},
  ],
};

/// Descriptor for `GetEventsForHeightRangeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getEventsForHeightRangeRequestDescriptor = $convert.base64Decode('Ch5HZXRFdmVudHNGb3JIZWlnaHRSYW5nZVJlcXVlc3QSEgoEdHlwZRgBIAEoCVIEdHlwZRIhCgxzdGFydF9oZWlnaHQYAiABKARSC3N0YXJ0SGVpZ2h0Eh0KCmVuZF9oZWlnaHQYAyABKARSCWVuZEhlaWdodA==');
@$core.Deprecated('Use getEventsForBlockIDsRequestDescriptor instead')
const GetEventsForBlockIDsRequest$json = const {
  '1': 'GetEventsForBlockIDsRequest',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'block_ids', '3': 2, '4': 3, '5': 12, '10': 'blockIds'},
  ],
};

/// Descriptor for `GetEventsForBlockIDsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getEventsForBlockIDsRequestDescriptor = $convert.base64Decode('ChtHZXRFdmVudHNGb3JCbG9ja0lEc1JlcXVlc3QSEgoEdHlwZRgBIAEoCVIEdHlwZRIbCglibG9ja19pZHMYAiADKAxSCGJsb2NrSWRz');
@$core.Deprecated('Use eventsResponseDescriptor instead')
const EventsResponse$json = const {
  '1': 'EventsResponse',
  '2': const [
    const {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.flow.access.EventsResponse.Result', '10': 'results'},
  ],
  '3': const [EventsResponse_Result$json],
};

@$core.Deprecated('Use eventsResponseDescriptor instead')
const EventsResponse_Result$json = const {
  '1': 'Result',
  '2': const [
    const {'1': 'block_id', '3': 1, '4': 1, '5': 12, '10': 'blockId'},
    const {'1': 'block_height', '3': 2, '4': 1, '5': 4, '10': 'blockHeight'},
    const {'1': 'events', '3': 3, '4': 3, '5': 11, '6': '.flow.entities.Event', '10': 'events'},
    const {'1': 'block_timestamp', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'blockTimestamp'},
  ],
};

/// Descriptor for `EventsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventsResponseDescriptor = $convert.base64Decode('Cg5FdmVudHNSZXNwb25zZRI8CgdyZXN1bHRzGAEgAygLMiIuZmxvdy5hY2Nlc3MuRXZlbnRzUmVzcG9uc2UuUmVzdWx0UgdyZXN1bHRzGrkBCgZSZXN1bHQSGQoIYmxvY2tfaWQYASABKAxSB2Jsb2NrSWQSIQoMYmxvY2tfaGVpZ2h0GAIgASgEUgtibG9ja0hlaWdodBIsCgZldmVudHMYAyADKAsyFC5mbG93LmVudGl0aWVzLkV2ZW50UgZldmVudHMSQwoPYmxvY2tfdGltZXN0YW1wGAQgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIOYmxvY2tUaW1lc3RhbXA=');
@$core.Deprecated('Use getNetworkParametersRequestDescriptor instead')
const GetNetworkParametersRequest$json = const {
  '1': 'GetNetworkParametersRequest',
};

/// Descriptor for `GetNetworkParametersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getNetworkParametersRequestDescriptor = $convert.base64Decode('ChtHZXROZXR3b3JrUGFyYW1ldGVyc1JlcXVlc3Q=');
@$core.Deprecated('Use getNetworkParametersResponseDescriptor instead')
const GetNetworkParametersResponse$json = const {
  '1': 'GetNetworkParametersResponse',
  '2': const [
    const {'1': 'chain_id', '3': 1, '4': 1, '5': 9, '10': 'chainId'},
  ],
};

/// Descriptor for `GetNetworkParametersResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getNetworkParametersResponseDescriptor = $convert.base64Decode('ChxHZXROZXR3b3JrUGFyYW1ldGVyc1Jlc3BvbnNlEhkKCGNoYWluX2lkGAEgASgJUgdjaGFpbklk');
@$core.Deprecated('Use getLatestProtocolStateSnapshotRequestDescriptor instead')
const GetLatestProtocolStateSnapshotRequest$json = const {
  '1': 'GetLatestProtocolStateSnapshotRequest',
};

/// Descriptor for `GetLatestProtocolStateSnapshotRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLatestProtocolStateSnapshotRequestDescriptor = $convert.base64Decode('CiVHZXRMYXRlc3RQcm90b2NvbFN0YXRlU25hcHNob3RSZXF1ZXN0');
@$core.Deprecated('Use protocolStateSnapshotResponseDescriptor instead')
const ProtocolStateSnapshotResponse$json = const {
  '1': 'ProtocolStateSnapshotResponse',
  '2': const [
    const {'1': 'serializedSnapshot', '3': 1, '4': 1, '5': 12, '10': 'serializedSnapshot'},
  ],
};

/// Descriptor for `ProtocolStateSnapshotResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocolStateSnapshotResponseDescriptor = $convert.base64Decode('Ch1Qcm90b2NvbFN0YXRlU25hcHNob3RSZXNwb25zZRIuChJzZXJpYWxpemVkU25hcHNob3QYASABKAxSEnNlcmlhbGl6ZWRTbmFwc2hvdA==');
@$core.Deprecated('Use getExecutionResultForBlockIDRequestDescriptor instead')
const GetExecutionResultForBlockIDRequest$json = const {
  '1': 'GetExecutionResultForBlockIDRequest',
  '2': const [
    const {'1': 'block_id', '3': 1, '4': 1, '5': 12, '10': 'blockId'},
  ],
};

/// Descriptor for `GetExecutionResultForBlockIDRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getExecutionResultForBlockIDRequestDescriptor = $convert.base64Decode('CiNHZXRFeGVjdXRpb25SZXN1bHRGb3JCbG9ja0lEUmVxdWVzdBIZCghibG9ja19pZBgBIAEoDFIHYmxvY2tJZA==');
@$core.Deprecated('Use executionResultForBlockIDResponseDescriptor instead')
const ExecutionResultForBlockIDResponse$json = const {
  '1': 'ExecutionResultForBlockIDResponse',
  '2': const [
    const {'1': 'execution_result', '3': 1, '4': 1, '5': 11, '6': '.flow.entities.ExecutionResult', '10': 'executionResult'},
  ],
};

/// Descriptor for `ExecutionResultForBlockIDResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List executionResultForBlockIDResponseDescriptor = $convert.base64Decode('CiFFeGVjdXRpb25SZXN1bHRGb3JCbG9ja0lEUmVzcG9uc2USSQoQZXhlY3V0aW9uX3Jlc3VsdBgBIAEoCzIeLmZsb3cuZW50aXRpZXMuRXhlY3V0aW9uUmVzdWx0Ug9leGVjdXRpb25SZXN1bHQ=');
