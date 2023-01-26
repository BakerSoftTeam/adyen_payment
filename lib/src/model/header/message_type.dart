import 'package:json_annotation/json_annotation.dart';

/// Type of the message.
@JsonEnum()
enum MessageType {
  @JsonValue('Request')
  request('Request'),
  @JsonValue('Response')
  response('Response'),
  @JsonValue('Notification')
  notification('Notification');

  final String title;

  const MessageType(this.title);
}
