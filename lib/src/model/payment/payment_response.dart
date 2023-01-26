import 'package:adyen_payment/src/model/common/response_data.dart';
import 'package:adyen_payment/src/model/common/result.dart';
import 'package:adyen_payment/src/model/payment/poi_data.dart';
import 'package:adyen_payment/src/model/payment/sale_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_response.g.dart';

/// Details about the payment.
@JsonSerializable()
class PaymentResponse {
  @JsonKey(name: 'POIData')
  final POIData poiData;

  @JsonKey(name: 'Response')
  final ResponseData response;

  @JsonKey(name: 'SaleData')
  final SaleData saleData;

  PaymentResponse({
    required this.poiData,
    required this.response,
    required this.saleData,
  });

  factory PaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentResponseToJson(this);

  /// Is payment successful
  bool get isSuccessful {
    return response.result == Result.success;
  }
}
