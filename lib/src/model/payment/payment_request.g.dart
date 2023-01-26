// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentRequest _$PaymentRequestFromJson(Map<String, dynamic> json) =>
    PaymentRequest(
      saleData: SaleData.fromJson(json['SaleData'] as Map<String, dynamic>),
      paymentTransaction: PaymentTransaction.fromJson(
          json['PaymentTransaction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaymentRequestToJson(PaymentRequest instance) =>
    <String, dynamic>{
      'SaleData': instance.saleData,
      'PaymentTransaction': instance.paymentTransaction,
    };
