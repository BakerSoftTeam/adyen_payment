// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SaleData _$SaleDataFromJson(Map<String, dynamic> json) => SaleData(
      saleTransactionId: SaleTransactionId.fromJson(
          json['SaleTransactionID'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SaleDataToJson(SaleData instance) => <String, dynamic>{
      'SaleTransactionID': instance.saleTransactionId,
    };
