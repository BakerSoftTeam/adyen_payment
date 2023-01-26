import 'package:json_annotation/json_annotation.dart';

part 'amounts_req.g.dart';

/// Information about transaction requirements.
@JsonSerializable()
class AmountsReq {
  @JsonKey(name: 'Currency')
  final String currency;

  @JsonKey(name: 'RequestedAmount')
  final double requestedAmount;

  const AmountsReq({
    required this.currency,
    required this.requestedAmount,
  });

  factory AmountsReq.fromJson(Map<String, dynamic> json) =>
      _$AmountsReqFromJson(json);

  Map<String, dynamic> toJson() => _$AmountsReqToJson(this);
}
