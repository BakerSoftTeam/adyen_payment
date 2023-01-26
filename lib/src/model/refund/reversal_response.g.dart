// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reversal_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReversalResponse _$ReversalResponseFromJson(Map<String, dynamic> json) =>
    ReversalResponse(
      poiData: json['POIData'] == null
          ? null
          : POIData.fromJson(json['POIData'] as Map<String, dynamic>),
      response: ResponseData.fromJson(json['Response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReversalResponseToJson(ReversalResponse instance) =>
    <String, dynamic>{
      'POIData': instance.poiData,
      'Response': instance.response,
    };
