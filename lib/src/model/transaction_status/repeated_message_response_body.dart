import 'package:adyen_payment/src/model/payment/payment_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'repeated_message_response_body.g.dart';

/// Response part for request transaction status.
@JsonSerializable()
class RepeatedMessageResponseBody {
  @JsonKey(name: 'PaymentResponse')
  final PaymentResponse paymentResponse;

  const RepeatedMessageResponseBody({
    required this.paymentResponse,
  });

  factory RepeatedMessageResponseBody.fromJson(Map<String, dynamic> json) =>
      _$RepeatedMessageResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$RepeatedMessageResponseBodyToJson(this);
}
