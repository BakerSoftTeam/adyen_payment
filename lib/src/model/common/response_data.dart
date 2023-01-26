import 'package:adyen_payment/src/model/common/error_condition.dart';
import 'package:adyen_payment/src/model/common/result.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response_data.g.dart';

/// Response details for the request.
@JsonSerializable()
class ResponseData {
  @JsonKey(name: 'Result')
  final Result result;

  @JsonKey(name: 'AdditionalResponse')
  final String? additionalResponse;

  @JsonKey(name: 'ErrorCondition', defaultValue: null)
  final ErrorCondition? errorCondition;

  const ResponseData({
    required this.result,
    required this.additionalResponse,
    required this.errorCondition,
  });

  factory ResponseData.fromJson(Map<String, dynamic> json) =>
      _$ResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseDataToJson(this);

  /// Process which result we asked is still in progress
  bool get isInProgress =>
      result == Result.failure && errorCondition == ErrorCondition.inProgress;
}
