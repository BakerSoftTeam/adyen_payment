import 'package:json_annotation/json_annotation.dart';

/// Reason for refunding.
@JsonEnum()
enum ReversalReason {
  @JsonValue('CustCancel')
  custCancel('CustCancel'),
  @JsonValue('MerchantCancel')
  merchantCancel('MerchantCancel'),
  @JsonValue('Malfunction')
  malfunction('Malfunction'),
  @JsonValue('Unable2Compl')
  unable2Compl('Unable2Compl');

  final String title;

  const ReversalReason(this.title);
}
