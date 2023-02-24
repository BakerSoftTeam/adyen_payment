// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abort_payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbortPayment _$AbortPaymentFromJson(Map<String, dynamic> json) => AbortPayment(
      requestData: AbortSaleToPoiRequest.fromJson(
          json['SaleToPOIRequest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AbortPaymentToJson(AbortPayment instance) =>
    <String, dynamic>{
      'SaleToPOIRequest': instance.requestData,
    };
