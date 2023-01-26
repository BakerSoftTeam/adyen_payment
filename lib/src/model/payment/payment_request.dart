import 'package:adyen_payment/src/model/payment/payment_transaction.dart';
import 'package:adyen_payment/src/model/payment/sale_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_request.g.dart';

/// Request to pay.
@JsonSerializable()
class PaymentRequest {
  @JsonKey(name: 'SaleData')
  final SaleData saleData;

  @JsonKey(name: 'PaymentTransaction')
  final PaymentTransaction paymentTransaction;

  const PaymentRequest({
    required this.saleData,
    required this.paymentTransaction,
  });

  factory PaymentRequest.fromJson(Map<String, dynamic> json) =>
      _$PaymentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentRequestToJson(this);
}
