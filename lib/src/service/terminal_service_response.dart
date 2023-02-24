/// Contains technical info that can be important before finish request and
/// Future that describe continuous process of interaction with POS.
class TerminalServiceResponse<T> {
  /// Identifier that describe concrete request to the POS.
  final String serviceId;

  /// Process describes interaction with POS.
  final Future<T> future;

  TerminalServiceResponse({required this.serviceId, required this.future});
}