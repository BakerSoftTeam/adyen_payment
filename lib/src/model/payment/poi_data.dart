import 'package:adyen_payment/src/model/payment/poi_transaction_id.dart';
import 'package:json_annotation/json_annotation.dart';

part 'poi_data.g.dart';

/// Information about payment from the point of interaction.
@JsonSerializable()
class POIData {
  @JsonKey(name: 'POITransactionID')
  final POITransactionId poiTransactionId;

  const POIData({required this.poiTransactionId});

  factory POIData.fromJson(Map<String, dynamic> json) =>
      _$POIDataFromJson(json);

  Map<String, dynamic> toJson() => _$POIDataToJson(this);
}
