// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'make_payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MakePayment _$MakePaymentFromJson(Map<String, dynamic> json) => MakePayment(
      requestData: PaymentSaleToPoiRequest.fromJson(
          json['SaleToPOIRequest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MakePaymentToJson(MakePayment instance) =>
    <String, dynamic>{
      'SaleToPOIRequest': instance.requestData,
    };
