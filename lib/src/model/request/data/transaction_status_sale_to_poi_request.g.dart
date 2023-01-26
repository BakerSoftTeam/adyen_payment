// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_status_sale_to_poi_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionStatusSaleToPoiRequest _$TransactionStatusSaleToPoiRequestFromJson(
        Map<String, dynamic> json) =>
    TransactionStatusSaleToPoiRequest(
      header:
          MessageHeader.fromJson(json['MessageHeader'] as Map<String, dynamic>),
      statusRequest: json['TransactionStatusRequest'] as Object? ?? const {},
    );

Map<String, dynamic> _$TransactionStatusSaleToPoiRequestToJson(
        TransactionStatusSaleToPoiRequest instance) =>
    <String, dynamic>{
      'MessageHeader': instance.header,
      'TransactionStatusRequest': instance.statusRequest,
    };
