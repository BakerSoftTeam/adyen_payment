// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referenced_refund_sale_to_poi_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReferencedRefundSaleToPoiResponse _$ReferencedRefundSaleToPoiResponseFromJson(
        Map<String, dynamic> json) =>
    ReferencedRefundSaleToPoiResponse(
      header:
          MessageHeader.fromJson(json['MessageHeader'] as Map<String, dynamic>),
      reversalResponse: ReversalResponse.fromJson(
          json['ReversalResponse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReferencedRefundSaleToPoiResponseToJson(
        ReferencedRefundSaleToPoiResponse instance) =>
    <String, dynamic>{
      'MessageHeader': instance.header,
      'ReversalResponse': instance.reversalResponse,
    };
