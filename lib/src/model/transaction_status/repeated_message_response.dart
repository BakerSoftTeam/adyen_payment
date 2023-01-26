import 'package:adyen_payment/src/model/header/message_header.dart';
import 'package:adyen_payment/src/model/transaction_status/repeated_message_response_body.dart';
import 'package:json_annotation/json_annotation.dart';

part 'repeated_message_response.g.dart';

/// Response for request transaction status.
@JsonSerializable()
class RepeatedMessageResponse {
  @JsonKey(name: 'MessageHeader')
  final MessageHeader header;

  @JsonKey(name: 'RepeatedResponseMessageBody')
  final RepeatedMessageResponseBody body;

  const RepeatedMessageResponse({
    required this.header,
    required this.body,
  });

  factory RepeatedMessageResponse.fromJson(Map<String, dynamic> json) =>
      _$RepeatedMessageResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RepeatedMessageResponseToJson(this);
}
