import 'package:json_annotation/json_annotation.dart';

/// This is almost always Service, but it can also be Device or Event.
@JsonEnum()
enum MessageClass {
  @JsonValue('Service')
  service('Service'),
  @JsonValue('Device')
  device('Device'),
  @JsonValue('Event')
  event('Event');

  final String title;

  const MessageClass(this.title);
}
