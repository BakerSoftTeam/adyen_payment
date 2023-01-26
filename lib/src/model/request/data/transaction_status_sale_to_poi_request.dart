import 'package:adyen_payment/src/model/header/message_header.dart';
import 'package:adyen_payment/src/model/request/data/sale_to_poi_request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transaction_status_sale_to_poi_request.g.dart';

/// Request data to check status of the previous request.
// TODO: implement https://docs.adyen.com/point-of-sale/design-your-integration/terminal-api/terminal-api-reference#comadyennexotransactionstatusrequest
// when we need customize details
@JsonSerializable()
class TransactionStatusSaleToPoiRequest extends SaleToPoiRequest {
  @JsonKey(name: 'TransactionStatusRequest')
  final Object statusRequest;

  const TransactionStatusSaleToPoiRequest({
    required super.header,
    this.statusRequest = const {},
  });

  factory TransactionStatusSaleToPoiRequest.fromJson(Map<String, dynamic> json) =>
      _$TransactionStatusSaleToPoiRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionStatusSaleToPoiRequestToJson(this);
}
