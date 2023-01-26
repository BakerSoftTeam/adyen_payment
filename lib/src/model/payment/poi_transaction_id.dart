import 'package:json_annotation/json_annotation.dart';

part 'poi_transaction_id.g.dart';

/// Information about transaction id from point of interaction.
@JsonSerializable()
class POITransactionId {
  @JsonKey(name: 'TransactionID')
  final String transactionId;

  @JsonKey(name: 'TimeStamp')
  final DateTime timeStamp;

  const POITransactionId({required this.transactionId, required this.timeStamp});

  factory POITransactionId.fromJson(Map<String, dynamic> json) =>
      _$POITransactionIdFromJson(json);

  Map<String, dynamic> toJson() => _$POITransactionIdToJson(this);
}
