// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentResponse _$PaymentResponseFromJson(Map<String, dynamic> json) =>
    PaymentResponse(
      poiData: POIData.fromJson(json['POIData'] as Map<String, dynamic>),
      response: ResponseData.fromJson(json['Response'] as Map<String, dynamic>),
      saleData: SaleData.fromJson(json['SaleData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaymentResponseToJson(PaymentResponse instance) =>
    <String, dynamic>{
      'POIData': instance.poiData,
      'Response': instance.response,
      'SaleData': instance.saleData,
    };
