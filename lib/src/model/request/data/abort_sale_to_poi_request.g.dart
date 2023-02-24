// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abort_sale_to_poi_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbortSaleToPoiRequest _$AbortSaleToPoiRequestFromJson(
        Map<String, dynamic> json) =>
    AbortSaleToPoiRequest(
      header:
          MessageHeader.fromJson(json['MessageHeader'] as Map<String, dynamic>),
      abortRequest:
          AbortRequest.fromJson(json['AbortRequest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AbortSaleToPoiRequestToJson(
        AbortSaleToPoiRequest instance) =>
    <String, dynamic>{
      'MessageHeader': instance.header,
      'AbortRequest': instance.abortRequest,
    };
