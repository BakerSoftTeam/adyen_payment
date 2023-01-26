import 'package:adyen_payment/src/model/header/message_header.dart';
import 'package:json_annotation/json_annotation.dart';

/// Base request data.
abstract class SaleToPoiRequest {
  @JsonKey(name: 'MessageHeader')
  final MessageHeader header;

  const SaleToPoiRequest({
    required this.header,
  });
}
