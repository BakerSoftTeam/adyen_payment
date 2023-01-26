/// Config for current terminal.
class PointOfSaleConfig {
  final String saleId;
  final String poiId;
  final String defaultCurrency;
  final String apiKey;

  const PointOfSaleConfig({
    this.defaultCurrency = 'EUR',
    required this.saleId,
    required this.poiId,
    required this.apiKey,
  });
}
