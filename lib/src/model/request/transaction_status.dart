import 'package:adyen_payment/src/model/request/data/transaction_status_sale_to_poi_request.dart';
import 'package:adyen_payment/src/model/request/request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transaction_status.g.dart';

/// Request status about a previous transaction .
@JsonSerializable()
class TransactionStatus extends Request<TransactionStatusSaleToPoiRequest> {
  const TransactionStatus({required super.requestData});

  factory TransactionStatus.fromJson(Map<String, dynamic> json) =>
      _$TransactionStatusFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionStatusToJson(this);
}