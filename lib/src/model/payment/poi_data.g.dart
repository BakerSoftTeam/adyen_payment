// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poi_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

POIData _$POIDataFromJson(Map<String, dynamic> json) => POIData(
      poiTransactionId: POITransactionId.fromJson(
          json['POITransactionID'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$POIDataToJson(POIData instance) => <String, dynamic>{
      'POITransactionID': instance.poiTransactionId,
    };
