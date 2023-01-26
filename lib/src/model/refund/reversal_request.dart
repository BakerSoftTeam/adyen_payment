import 'package:adyen_payment/src/model/payment/poi_data.dart';
import 'package:adyen_payment/src/model/refund/reversal_reason.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reversal_request.g.dart';

/// Request to pay.
@JsonSerializable()
class ReversalRequest {
  @JsonKey(name: 'OriginalPOITransaction')
  final POIData transaction;

  @JsonKey(name: 'ReversalReason')
  final ReversalReason reason;

  const ReversalRequest({required this.transaction, required this.reason});

  factory ReversalRequest.fromJson(Map<String, dynamic> json) => _$ReversalRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ReversalRequestToJson(this);
}
