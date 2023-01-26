// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionStatusResponse _$TransactionStatusResponseFromJson(
        Map<String, dynamic> json) =>
    TransactionStatusResponse(
      response: ResponseData.fromJson(json['Response'] as Map<String, dynamic>),
      repeatedMessageResponse: json['RepeatedMessageResponse'] == null
          ? null
          : RepeatedMessageResponse.fromJson(
              json['RepeatedMessageResponse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransactionStatusResponseToJson(
        TransactionStatusResponse instance) =>
    <String, dynamic>{
      'Response': instance.response,
      'RepeatedMessageResponse': instance.repeatedMessageResponse,
    };
