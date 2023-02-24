import 'package:adyen_payment/src/model/header/message_header.dart';
import 'package:adyen_payment/src/model/abort/abort_request.dart';
import 'package:adyen_payment/src/model/request/data/sale_to_poi_request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'abort_sale_to_poi_request.g.dart';

/// Request data to make a payment.
@JsonSerializable()
class AbortSaleToPoiRequest extends SaleToPoiRequest {
  @JsonKey(name: 'AbortRequest')
  final AbortRequest abortRequest;

  const AbortSaleToPoiRequest({
    required super.header,
    required this.abortRequest,
  });

  factory AbortSaleToPoiRequest.fromJson(Map<String, dynamic> json) =>
      _$AbortSaleToPoiRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AbortSaleToPoiRequestToJson(this);
}
