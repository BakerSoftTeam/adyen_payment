import 'package:adyen_payment/src/model/payment/payment_response.dart';
import 'package:adyen_payment/src/model/response/data/payment_sale_to_poi_response.dart';
import 'package:adyen_payment/src/model/response/response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'make_payment_response.g.dart';

/// Request to make a payment.
@JsonSerializable()
class MakePaymentResponse extends Response<PaymentSaleToPoiResponse> {
  const MakePaymentResponse({required super.responseData});

  factory MakePaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$MakePaymentResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MakePaymentResponseToJson(this);

  /// Payment info.
  PaymentResponse get payment {
    return responseData.paymentResponse;
  }
}