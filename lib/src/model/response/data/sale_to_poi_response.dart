import 'package:adyen_payment/src/model/header/message_header.dart';
import 'package:json_annotation/json_annotation.dart';

/// Base response data.
abstract class SaleToPOIResponse {
  @JsonKey(name: 'MessageHeader')
  final MessageHeader header;

  const SaleToPOIResponse({
    required this.header,
  });
}
