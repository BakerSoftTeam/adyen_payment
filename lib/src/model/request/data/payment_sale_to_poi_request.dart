import 'package:adyen_payment/src/model/header/message_header.dart';
import 'package:adyen_payment/src/model/payment/payment_request.dart';
import 'package:adyen_payment/src/model/request/data/sale_to_poi_request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_sale_to_poi_request.g.dart';

/// Request data to make a payment.
@JsonSerializable()
class PaymentSaleToPoiRequest extends SaleToPoiRequest {
  @JsonKey(name: 'PaymentRequest')
  final PaymentRequest paymentRequest;

  const PaymentSaleToPoiRequest({
    required super.header,
    required this.paymentRequest,
  });

  factory PaymentSaleToPoiRequest.fromJson(Map<String, dynamic> json) =>
      _$PaymentSaleToPoiRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentSaleToPoiRequestToJson(this);
}
