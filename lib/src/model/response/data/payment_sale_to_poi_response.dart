import 'package:adyen_payment/src/model/header/message_header.dart';
import 'package:adyen_payment/src/model/payment/payment_response.dart';
import 'package:adyen_payment/src/model/response/data/sale_to_poi_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_sale_to_poi_response.g.dart';

/// Response data for the request to make a payment.
@JsonSerializable()
class PaymentSaleToPoiResponse extends SaleToPOIResponse {
  @JsonKey(name: 'PaymentResponse')
  final PaymentResponse paymentResponse;

  const PaymentSaleToPoiResponse({
    required super.header,
    required this.paymentResponse,
  });

  factory PaymentSaleToPoiResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentSaleToPoiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentSaleToPoiResponseToJson(this);
}
