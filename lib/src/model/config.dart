import 'package:adyen_payment/src/model/endpoint.dart';

/// Config for current terminal.
class PointOfSaleConfig {
  final String saleId;
  final String poiId;
  final String defaultCurrency;
  final String apiKey;
  final Endpoint endpoint;

  const PointOfSaleConfig({
    this.defaultCurrency = 'EUR',
    this.endpoint = Endpoint.testSync,
    required this.saleId,
    required this.poiId,
    required this.apiKey,
  });
}

