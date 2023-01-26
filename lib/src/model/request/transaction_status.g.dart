// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionStatus _$TransactionStatusFromJson(Map<String, dynamic> json) =>
    TransactionStatus(
      requestData: TransactionStatusSaleToPoiRequest.fromJson(
          json['SaleToPOIRequest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransactionStatusToJson(TransactionStatus instance) =>
    <String, dynamic>{
      'SaleToPOIRequest': instance.requestData,
    };
