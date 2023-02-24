// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abort_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbortRequest _$AbortRequestFromJson(Map<String, dynamic> json) => AbortRequest(
      abortReason: json['AbortReason'] as String,
      messageReference: MessageReference.fromJson(
          json['MessageReference'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AbortRequestToJson(AbortRequest instance) =>
    <String, dynamic>{
      'AbortReason': instance.abortReason,
      'MessageReference': instance.messageReference,
    };
