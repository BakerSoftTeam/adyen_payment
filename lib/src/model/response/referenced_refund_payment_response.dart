import 'package:adyen_payment/src/model/refund/reversal_response.dart';
import 'package:adyen_payment/src/model/response/data/referenced_refund_sale_to_poi_response.dart';
import 'package:adyen_payment/src/model/response/response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'referenced_refund_payment_response.g.dart';

/// Request to make a payment.
@JsonSerializable()
class ReferencedRefundResponse extends Response<ReferencedRefundSaleToPoiResponse> {
  const ReferencedRefundResponse({required super.responseData});

  factory ReferencedRefundResponse.fromJson(Map<String, dynamic> json) =>
      _$ReferencedRefundResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ReferencedRefundResponseToJson(this);

  /// Reversal info.
  ReversalResponse get reversal {
    return responseData.reversalResponse;
  }
}