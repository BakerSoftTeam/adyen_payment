import 'package:uuid/uuid.dart';

/// Id generator.
class IdFactory {
  final Uuid uuid;

  const IdFactory({this.uuid = const Uuid()});

  /// Generate id based on current time.
  String generateTimeHash() {
    return DateTime.now().hashCode.toString();
  }

  /// Generate unique id based on current time.
  String generateUuid() {
    return uuid.v1().replaceAll('-', '');
  }
}