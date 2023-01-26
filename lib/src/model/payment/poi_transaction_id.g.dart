// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poi_transaction_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

POITransactionId _$POITransactionIdFromJson(Map<String, dynamic> json) =>
    POITransactionId(
      transactionId: json['TransactionID'] as String,
      timeStamp: DateTime.parse(json['TimeStamp'] as String),
    );

Map<String, dynamic> _$POITransactionIdToJson(POITransactionId instance) =>
    <String, dynamic>{
      'TransactionID': instance.transactionId,
      'TimeStamp': instance.timeStamp.toIso8601String(),
    };
