import 'package:adyen_payment/src/model/header/message_header.dart';
import 'package:adyen_payment/src/model/response/data/sale_to_poi_response.dart';
import 'package:adyen_payment/src/model/transaction_status/transaction_status_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transaction_status_sale_to_poi_response.g.dart';

/// Response data for the request to make a TransactionStatus.
@JsonSerializable()
class TransactionStatusSaleToPoiResponse extends SaleToPOIResponse {
  @JsonKey(name: 'TransactionStatusResponse')
  final TransactionStatusResponse transactionStatusResponse;

  const TransactionStatusSaleToPoiResponse({
    required super.header,
    required this.transactionStatusResponse,
  });

  factory TransactionStatusSaleToPoiResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionStatusSaleToPoiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionStatusSaleToPoiResponseToJson(this);
}
