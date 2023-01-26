// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repeated_message_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RepeatedMessageResponse _$RepeatedMessageResponseFromJson(
        Map<String, dynamic> json) =>
    RepeatedMessageResponse(
      header:
          MessageHeader.fromJson(json['MessageHeader'] as Map<String, dynamic>),
      body: RepeatedMessageResponseBody.fromJson(
          json['RepeatedResponseMessageBody'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RepeatedMessageResponseToJson(
        RepeatedMessageResponse instance) =>
    <String, dynamic>{
      'MessageHeader': instance.header,
      'RepeatedResponseMessageBody': instance.body,
    };
