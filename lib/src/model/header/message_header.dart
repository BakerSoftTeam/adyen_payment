import 'package:adyen_payment/src/model/header/message_category.dart';
import 'package:adyen_payment/src/model/header/message_class.dart';
import 'package:adyen_payment/src/model/header/message_type.dart';
import 'package:adyen_payment/src/model/header/protocol_version.dart';
import 'package:json_annotation/json_annotation.dart';

part 'message_header.g.dart';

/// Header that should be specified by every request.
@JsonSerializable()
class MessageHeader {
  @JsonKey(name: 'ProtocolVersion')
  final String protocolVersion;

  @JsonKey(name: 'MessageClass')
  final MessageClass messageClass;

  @JsonKey(name: 'MessageCategory')
  final MessageCategory messageCategory;

  @JsonKey(name: 'MessageType')
  final MessageType messageType;

  /// Your unique ID for this request, consisting of 1-10 alphanumeric
  /// characters. Must be unique within the last 48 hours for
  /// the terminal (POIID) being used.
  @JsonKey(name: 'ServiceID')
  final String serviceId;

  /// Your unique ID for the system where you send this request from.
  @JsonKey(name: 'SaleID')
  final String saleId;

  /// The unique ID of the terminal that you send this request to.
  /// Format: [device model]-[serial number]. For example, P400-123456789.
  @JsonKey(name: 'POIID')
  final String poiId;

  const MessageHeader({
    this.protocolVersion = currentProtocolVersion,
    required this.messageClass,
    required this.messageCategory,
    required this.messageType,
    required this.serviceId,
    required this.saleId,
    required this.poiId,
  });

  factory MessageHeader.fromJson(Map<String, dynamic> json) =>
      _$MessageHeaderFromJson(json);

  Map<String, dynamic> toJson() => _$MessageHeaderToJson(this);
}
