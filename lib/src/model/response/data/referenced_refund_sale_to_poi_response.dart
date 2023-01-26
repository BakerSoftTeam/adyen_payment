import 'package:adyen_payment/src/model/header/message_header.dart';
import 'package:adyen_payment/src/model/refund/reversal_response.dart';
import 'package:adyen_payment/src/model/response/data/sale_to_poi_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'referenced_refund_sale_to_poi_response.g.dart';

/// Response data for the request to make a payment.
@JsonSerializable()
class ReferencedRefundSaleToPoiResponse extends SaleToPOIResponse {
  @JsonKey(name: 'ReversalResponse')
  final ReversalResponse reversalResponse;

  const ReferencedRefundSaleToPoiResponse({
    required super.header,
    required this.reversalResponse,
  });

  factory ReferencedRefundSaleToPoiResponse.fromJson(Map<String, dynamic> json) =>
      _$ReferencedRefundSaleToPoiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ReferencedRefundSaleToPoiResponseToJson(this);
}
