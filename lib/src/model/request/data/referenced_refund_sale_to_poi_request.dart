import 'package:adyen_payment/src/model/header/message_header.dart';
import 'package:adyen_payment/src/model/refund/reversal_request.dart';
import 'package:adyen_payment/src/model/request/data/sale_to_poi_request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'referenced_refund_sale_to_poi_request.g.dart';

/// Request data to make a refund by reference.
@JsonSerializable()
class ReferencedRefundSaleToPoiRequest extends SaleToPoiRequest {
  @JsonKey(name: 'ReversalRequest')
  final ReversalRequest reversalRequest;

  const ReferencedRefundSaleToPoiRequest({
    required super.header,
    required this.reversalRequest,
  });

  factory ReferencedRefundSaleToPoiRequest.fromJson(Map<String, dynamic> json) =>
      _$ReferencedRefundSaleToPoiRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ReferencedRefundSaleToPoiRequestToJson(this);
}
