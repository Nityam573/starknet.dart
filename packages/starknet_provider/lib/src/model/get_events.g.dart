// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetEventsResultImpl _$$GetEventsResultImplFromJson(
        Map<String, dynamic> json) =>
    _$GetEventsResultImpl(
      result:
          GetEventsResponse.fromJson(json['result'] as Map<String, dynamic>),
      $type: json['starkNetRuntimeTypeToRemove'] as String?,
    );

Map<String, dynamic> _$$GetEventsResultImplToJson(
        _$GetEventsResultImpl instance) =>
    <String, dynamic>{
      'result': instance.result.toJson(),
      'starkNetRuntimeTypeToRemove': instance.$type,
    };

_$GetEventsErrorImpl _$$GetEventsErrorImplFromJson(Map<String, dynamic> json) =>
    _$GetEventsErrorImpl(
      error: JsonRpcApiError.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['starkNetRuntimeTypeToRemove'] as String?,
    );

Map<String, dynamic> _$$GetEventsErrorImplToJson(
        _$GetEventsErrorImpl instance) =>
    <String, dynamic>{
      'error': instance.error.toJson(),
      'starkNetRuntimeTypeToRemove': instance.$type,
    };

_$GetEventsRequestImpl _$$GetEventsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetEventsRequestImpl(
      fromBlock: json['from_block'] == null
          ? null
          : BlockId.fromJson(json['from_block'] as Map<String, dynamic>),
      toBlock: json['to_block'] == null
          ? null
          : BlockId.fromJson(json['to_block'] as Map<String, dynamic>),
      address: json['address'] == null
          ? null
          : Felt.fromJson(json['address'] as String),
      keys: (json['keys'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>)
              .map((e) => Felt.fromJson(e as String))
              .toList())
          .toList(),
      chunkSize: json['chunk_size'] as int,
      continuationToken: json['continuation_token'] as String?,
    );

Map<String, dynamic> _$$GetEventsRequestImplToJson(
    _$GetEventsRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('from_block', instance.fromBlock?.toJson());
  writeNotNull('to_block', instance.toBlock?.toJson());
  writeNotNull('address', instance.address?.toJson());
  writeNotNull('keys',
      instance.keys?.map((e) => e.map((e) => e.toJson()).toList()).toList());
  val['chunk_size'] = instance.chunkSize;
  writeNotNull('continuation_token', instance.continuationToken);
  return val;
}

_$GetEventsResponseImpl _$$GetEventsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetEventsResponseImpl(
      events: (json['events'] as List<dynamic>)
          .map((e) => EmittedEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
      continuation_token: json['continuation_token'] as String?,
    );

Map<String, dynamic> _$$GetEventsResponseImplToJson(
    _$GetEventsResponseImpl instance) {
  final val = <String, dynamic>{
    'events': instance.events.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('continuation_token', instance.continuation_token);
  return val;
}

_$EmittedEventImpl _$$EmittedEventImplFromJson(Map<String, dynamic> json) =>
    _$EmittedEventImpl(
      fromAddress: json['from_address'] == null
          ? null
          : Felt.fromJson(json['from_address'] as String),
      keys: (json['keys'] as List<dynamic>?)
          ?.map((e) => Felt.fromJson(e as String))
          .toList(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Felt.fromJson(e as String))
          .toList(),
      transactionHash: json['transaction_hash'] == null
          ? null
          : Felt.fromJson(json['transaction_hash'] as String),
      blockHash: json['block_hash'] == null
          ? null
          : Felt.fromJson(json['block_hash'] as String),
      blockNumber: json['block_number'] as int?,
    );

Map<String, dynamic> _$$EmittedEventImplToJson(_$EmittedEventImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('from_address', instance.fromAddress?.toJson());
  writeNotNull('keys', instance.keys?.map((e) => e.toJson()).toList());
  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  writeNotNull('transaction_hash', instance.transactionHash?.toJson());
  writeNotNull('block_hash', instance.blockHash?.toJson());
  writeNotNull('block_number', instance.blockNumber);
  return val;
}
