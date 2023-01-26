// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionStatusResponse _$TransactionStatusResponseFromJson(
        Map<String, dynamic> json) =>
    TransactionStatusResponse(
      responseData: TransactionStatusSaleToPoiResponse.fromJson(
          json['SaleToPOIResponse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransactionStatusResponseToJson(
        TransactionStatusResponse instance) =>
    <String, dynamic>{
      'SaleToPOIResponse': instance.responseData,
    };
