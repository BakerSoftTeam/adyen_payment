// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reversal_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReversalRequest _$ReversalRequestFromJson(Map<String, dynamic> json) =>
    ReversalRequest(
      transaction: POIData.fromJson(
          json['OriginalPOITransaction'] as Map<String, dynamic>),
      reason: $enumDecode(_$ReversalReasonEnumMap, json['ReversalReason']),
    );

Map<String, dynamic> _$ReversalRequestToJson(ReversalRequest instance) =>
    <String, dynamic>{
      'OriginalPOITransaction': instance.transaction,
      'ReversalReason': _$ReversalReasonEnumMap[instance.reason]!,
    };

const _$ReversalReasonEnumMap = {
  ReversalReason.custCancel: 'CustCancel',
  ReversalReason.merchantCancel: 'MerchantCancel',
  ReversalReason.malfunction: 'Malfunction',
  ReversalReason.unable2Compl: 'Unable2Compl',
};
