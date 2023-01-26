import 'package:adyen_payment/src/model/common/error_condition.dart';
import 'package:adyen_payment/src/model/common/result.dart';
import 'package:adyen_payment/src/model/payment/payment_response.dart';
import 'package:adyen_payment/src/model/response/data/transaction_status_sale_to_poi_response.dart';
import 'package:adyen_payment/src/model/response/response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transaction_status_response.g.dart';

/// Request to check status of the transaction.
@JsonSerializable()
class TransactionStatusResponse
    extends Response<TransactionStatusSaleToPoiResponse> {
  const TransactionStatusResponse({required super.responseData});

  factory TransactionStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionStatusResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionStatusResponseToJson(this);

  /// Is transaction still in progress
  bool get isInProgress {
    final response = responseData.transactionStatusResponse.response;
    return response.result == Result.failure &&
        response.errorCondition == ErrorCondition.inProgress;
  }

  /// Transaction completed. Can be as paid as failed to pay
  bool get hasPaymentResult {
    final response = responseData.transactionStatusResponse.response;
    return response.result == Result.success;
  }

  /// Payment info, if info exist in the response
  PaymentResponse? get payment {
    return responseData.transactionStatusResponse.repeatedMessageResponse?.body
        .paymentResponse;
  }
}
