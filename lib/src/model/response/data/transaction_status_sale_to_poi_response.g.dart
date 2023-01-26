// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_status_sale_to_poi_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionStatusSaleToPoiResponse _$TransactionStatusSaleToPoiResponseFromJson(
        Map<String, dynamic> json) =>
    TransactionStatusSaleToPoiResponse(
      header:
          MessageHeader.fromJson(json['MessageHeader'] as Map<String, dynamic>),
      transactionStatusResponse: TransactionStatusResponse.fromJson(
          json['TransactionStatusResponse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransactionStatusSaleToPoiResponseToJson(
        TransactionStatusSaleToPoiResponse instance) =>
    <String, dynamic>{
      'MessageHeader': instance.header,
      'TransactionStatusResponse': instance.transactionStatusResponse,
    };
