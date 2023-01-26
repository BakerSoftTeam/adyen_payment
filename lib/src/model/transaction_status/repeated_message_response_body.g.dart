// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repeated_message_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RepeatedMessageResponseBody _$RepeatedMessageResponseBodyFromJson(
        Map<String, dynamic> json) =>
    RepeatedMessageResponseBody(
      paymentResponse: PaymentResponse.fromJson(
          json['PaymentResponse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RepeatedMessageResponseBodyToJson(
        RepeatedMessageResponseBody instance) =>
    <String, dynamic>{
      'PaymentResponse': instance.paymentResponse,
    };
