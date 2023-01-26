import 'package:adyen_payment/src/model/request/data/payment_sale_to_poi_request.dart';
import 'package:adyen_payment/src/model/request/request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'make_payment.g.dart';

/// Request to make a payment.
@JsonSerializable()
class MakePayment extends Request<PaymentSaleToPoiRequest> {
  const MakePayment({required super.requestData});

  factory MakePayment.fromJson(Map<String, dynamic> json) =>
      _$MakePaymentFromJson(json);

  Map<String, dynamic> toJson() => _$MakePaymentToJson(this);
}