import 'package:adyen_payment/src/model/payment/amounts_req.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_transaction.g.dart';

/// Transaction description.
@JsonSerializable()
class PaymentTransaction {
  @JsonKey(name: 'AmountsReq')
  final AmountsReq amountsReq;

  const PaymentTransaction({required this.amountsReq});

  factory PaymentTransaction.fromJson(Map<String, dynamic> json) =>
      _$PaymentTransactionFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentTransactionToJson(this);
}
