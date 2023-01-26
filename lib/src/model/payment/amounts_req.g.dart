// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amounts_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AmountsReq _$AmountsReqFromJson(Map<String, dynamic> json) => AmountsReq(
      currency: json['Currency'] as String,
      requestedAmount: (json['RequestedAmount'] as num).toDouble(),
    );

Map<String, dynamic> _$AmountsReqToJson(AmountsReq instance) =>
    <String, dynamic>{
      'Currency': instance.currency,
      'RequestedAmount': instance.requestedAmount,
    };
