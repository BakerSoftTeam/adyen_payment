// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_sale_to_poi_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentSaleToPoiResponse _$PaymentSaleToPoiResponseFromJson(
        Map<String, dynamic> json) =>
    PaymentSaleToPoiResponse(
      header:
          MessageHeader.fromJson(json['MessageHeader'] as Map<String, dynamic>),
      paymentResponse: PaymentResponse.fromJson(
          json['PaymentResponse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaymentSaleToPoiResponseToJson(
        PaymentSaleToPoiResponse instance) =>
    <String, dynamic>{
      'MessageHeader': instance.header,
      'PaymentResponse': instance.paymentResponse,
    };
