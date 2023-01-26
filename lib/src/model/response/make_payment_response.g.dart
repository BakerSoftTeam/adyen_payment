// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'make_payment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MakePaymentResponse _$MakePaymentResponseFromJson(Map<String, dynamic> json) =>
    MakePaymentResponse(
      responseData: PaymentSaleToPoiResponse.fromJson(
          json['SaleToPOIResponse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MakePaymentResponseToJson(
        MakePaymentResponse instance) =>
    <String, dynamic>{
      'SaleToPOIResponse': instance.responseData,
    };
