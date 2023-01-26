import 'package:adyen_payment/src/model/common/response_data.dart';
import 'package:adyen_payment/src/model/common/result.dart';
import 'package:adyen_payment/src/model/payment/poi_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reversal_response.g.dart';

/// Details about the refund.
@JsonSerializable()
class ReversalResponse {
  @JsonKey(name: 'POIData')
  final POIData? poiData;

  @JsonKey(name: 'Response')
  final ResponseData response;

  ReversalResponse({
    required this.poiData,
    required this.response,
  });

  factory ReversalResponse.fromJson(Map<String, dynamic> json) =>
      _$ReversalResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ReversalResponseToJson(this);

  /// Is refund successful
  bool get isSuccessful {
    return response.result == Result.success;
  }

  /// Did this transaction refunded before
  bool get isAlreadyVoided {
    if (response.result == Result.success) {
      return response.additionalResponse?.contains('voided') ?? false;
    }
    
    return false;
  }
}
