import 'package:json_annotation/json_annotation.dart';

/// Result status.
@JsonEnum()
enum Result {
  @JsonValue('Success')
  success('Success'),
  @JsonValue('Failure')
  failure('Failure'),
  @JsonValue('Partial')
  partial('Partial');

  final String title;

  const Result(this.title);
}
