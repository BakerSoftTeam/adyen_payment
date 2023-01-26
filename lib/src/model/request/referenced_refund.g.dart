// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referenced_refund.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReferencedRefund _$ReferencedRefundFromJson(Map<String, dynamic> json) =>
    ReferencedRefund(
      requestData: ReferencedRefundSaleToPoiRequest.fromJson(
          json['SaleToPOIRequest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReferencedRefundToJson(ReferencedRefund instance) =>
    <String, dynamic>{
      'SaleToPOIRequest': instance.requestData,
    };
