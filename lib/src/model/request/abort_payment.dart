import 'package:adyen_payment/src/model/request/data/abort_sale_to_poi_request.dart';
import 'package:adyen_payment/src/model/request/request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'abort_payment.g.dart';

/// Request to cancel the payment.
@JsonSerializable()
class AbortPayment extends Request<AbortSaleToPoiRequest> {
  const AbortPayment({required super.requestData});

  factory AbortPayment.fromJson(Map<String, dynamic> json) =>
      _$AbortPaymentFromJson(json);

  Map<String, dynamic> toJson() => _$AbortPaymentToJson(this);
}