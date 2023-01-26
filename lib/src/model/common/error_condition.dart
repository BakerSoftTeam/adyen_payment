import 'package:json_annotation/json_annotation.dart';

/// Why result is not successful.
@JsonEnum()
enum ErrorCondition {
  @JsonValue('Aborted')
  aborted('Aborted'),
  @JsonValue('Busy')
  busy('Busy'),
  @JsonValue('Cancel')
  cancel('Cancel'),
  @JsonValue('Communication timeout')
  communicationTimeout('Communication timeout'),
  @JsonValue('DeviceOut')
  deviceOut('DeviceOut'),
  @JsonValue('InsertedCard')
  insertedCard('InsertedCard'),
  @JsonValue('InProgress')
  inProgress('InProgress'),
  @JsonValue('LoggedOut')
  loggedOut('LoggedOut'),
  @JsonValue('MessageFormat')
  messageFormat('MessageFormat'),
  @JsonValue('NotAllowed')
  notAllowed('NotAllowed'),
  @JsonValue('NotFound')
  notFound('NotFound'),
  @JsonValue('PaymentRestriction')
  paymentRestriction('PaymentRestriction'),
  @JsonValue('Refusal')
  refusal('Refusal'),
  @JsonValue('UnavailableDevice')
  unavailableDevice('UnavailableDevice'),
  @JsonValue('UnavailableService')
  unavailableService('UnavailableService'),
  @JsonValue('InvalidCard')
  invalidCard('InvalidCard'),
  @JsonValue('UnreachableHost')
  unreachableHost('UnreachableHost'),
  @JsonValue('WrongPIN')
  wrongPin('WrongPIN');

  final String title;

  const ErrorCondition(this.title);
}
