// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referenced_refund_payment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReferencedRefundResponse _$ReferencedRefundResponseFromJson(
        Map<String, dynamic> json) =>
    ReferencedRefundResponse(
      responseData: ReferencedRefundSaleToPoiResponse.fromJson(
          json['SaleToPOIResponse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReferencedRefundResponseToJson(
        ReferencedRefundResponse instance) =>
    <String, dynamic>{
      'SaleToPOIResponse': instance.responseData,
    };
