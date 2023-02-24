import 'package:adyen_payment/src/model/header/message_category.dart';
import 'package:json_annotation/json_annotation.dart';

part 'message_reference.g.dart';

/// Request to pay.
@JsonSerializable()
class MessageReference {
  @JsonKey(name: 'ServiceID')
  final String? serviceId;

  @JsonKey(name: 'DeviceID')
  final String? deviceId;

  @JsonKey(name: 'SaleID')
  final String? saleId;

  @JsonKey(name: 'POIID')
  final String? poiId;

  @JsonKey(name: 'MessageCategory')
  final MessageCategory? messageCategory;

  const MessageReference({
    this.serviceId,
    this.deviceId,
    this.saleId,
    this.poiId,
    this.messageCategory,
  });

  factory MessageReference.fromJson(Map<String, dynamic> json) =>
      _$MessageReferenceFromJson(json);

  Map<String, dynamic> toJson() => _$MessageReferenceToJson(this);
}
