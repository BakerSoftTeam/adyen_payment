// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_sale_to_poi_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentSaleToPoiRequest _$PaymentSaleToPoiRequestFromJson(
        Map<String, dynamic> json) =>
    PaymentSaleToPoiRequest(
      header:
          MessageHeader.fromJson(json['MessageHeader'] as Map<String, dynamic>),
      paymentRequest: PaymentRequest.fromJson(
          json['PaymentRequest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaymentSaleToPoiRequestToJson(
        PaymentSaleToPoiRequest instance) =>
    <String, dynamic>{
      'MessageHeader': instance.header,
      'PaymentRequest': instance.paymentRequest,
    };
