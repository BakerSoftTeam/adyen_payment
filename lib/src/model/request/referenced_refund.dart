import 'package:adyen_payment/src/model/request/data/referenced_refund_sale_to_poi_request.dart';
import 'package:adyen_payment/src/model/request/request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'referenced_refund.g.dart';

/// Request to make a payment.
@JsonSerializable()
class ReferencedRefund extends Request<ReferencedRefundSaleToPoiRequest> {
  const ReferencedRefund({required super.requestData});

  factory ReferencedRefund.fromJson(Map<String, dynamic> json) =>
      _$ReferencedRefundFromJson(json);

  Map<String, dynamic> toJson() => _$ReferencedRefundToJson(this);
}