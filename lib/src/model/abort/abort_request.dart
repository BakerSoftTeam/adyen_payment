import 'package:adyen_payment/src/model/abort/message_reference.dart';
import 'package:json_annotation/json_annotation.dart';

part 'abort_request.g.dart';

/// Request to pay.
@JsonSerializable()
class AbortRequest {
  @JsonKey(name: 'AbortReason')
  final String abortReason;

  @JsonKey(name: 'MessageReference')
  final MessageReference messageReference;

  const AbortRequest({
    required this.abortReason,
    required this.messageReference,
  });

  factory AbortRequest.fromJson(Map<String, dynamic> json) =>
      _$AbortRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AbortRequestToJson(this);
}
