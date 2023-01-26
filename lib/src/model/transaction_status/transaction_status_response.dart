import 'package:adyen_payment/src/model/common/response_data.dart';
import 'package:adyen_payment/src/model/transaction_status/repeated_message_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transaction_status_response.g.dart';

/// Response for request transaction status.
@JsonSerializable()
class TransactionStatusResponse {
  @JsonKey(name: 'Response')
  final ResponseData response;

  @JsonKey(name: 'RepeatedMessageResponse')
  final RepeatedMessageResponse? repeatedMessageResponse;

  const TransactionStatusResponse({
    required this.response,
    required this.repeatedMessageResponse,
  });

  factory TransactionStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionStatusResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionStatusResponseToJson(this);
}
