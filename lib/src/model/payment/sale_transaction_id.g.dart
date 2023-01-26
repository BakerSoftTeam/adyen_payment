// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_transaction_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SaleTransactionId _$SaleTransactionIdFromJson(Map<String, dynamic> json) =>
    SaleTransactionId(
      transactionId: json['TransactionID'] as String,
      timeStamp: json['TimeStamp'] == null
          ? null
          : DateTime.parse(json['TimeStamp'] as String),
    );

Map<String, dynamic> _$SaleTransactionIdToJson(SaleTransactionId instance) =>
    <String, dynamic>{
      'TransactionID': instance.transactionId,
      'TimeStamp': instance.timeStamp.toIso8601String(),
    };
