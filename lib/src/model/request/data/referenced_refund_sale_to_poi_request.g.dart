// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referenced_refund_sale_to_poi_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReferencedRefundSaleToPoiRequest _$ReferencedRefundSaleToPoiRequestFromJson(
        Map<String, dynamic> json) =>
    ReferencedRefundSaleToPoiRequest(
      header:
          MessageHeader.fromJson(json['MessageHeader'] as Map<String, dynamic>),
      reversalRequest: ReversalRequest.fromJson(
          json['ReversalRequest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReferencedRefundSaleToPoiRequestToJson(
        ReferencedRefundSaleToPoiRequest instance) =>
    <String, dynamic>{
      'MessageHeader': instance.header,
      'ReversalRequest': instance.reversalRequest,
    };
