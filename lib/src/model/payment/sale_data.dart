import 'package:adyen_payment/src/model/payment/sale_transaction_id.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sale_data.g.dart';

/// Information about transaction from sale.
@JsonSerializable()
class SaleData {
  @JsonKey(name: 'SaleTransactionID')
  final SaleTransactionId saleTransactionId;

  const SaleData({required this.saleTransactionId});

  factory SaleData.fromJson(Map<String, dynamic> json) =>
      _$SaleDataFromJson(json);

  Map<String, dynamic> toJson() => _$SaleDataToJson(this);
}
