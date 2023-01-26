import 'package:json_annotation/json_annotation.dart';

part 'sale_transaction_id.g.dart';

/// Information about transaction id from sale.
@JsonSerializable()
class SaleTransactionId {
  @JsonKey(name: 'TransactionID')
  final String transactionId;

  @JsonKey(name: 'TimeStamp')
  final DateTime timeStamp;

  SaleTransactionId({required this.transactionId, DateTime? timeStamp})
      : timeStamp = timeStamp ?? DateTime.now().toUtc();

  factory SaleTransactionId.fromJson(Map<String, dynamic> json) =>
      _$SaleTransactionIdFromJson(json);

  Map<String, dynamic> toJson() => _$SaleTransactionIdToJson(this);
}
