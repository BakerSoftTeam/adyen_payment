/// Available Adyen cloud-endpoints.
enum Endpoint {
  /// Test sync endpoint
  testSync('https://terminal-api-test.adyen.com/sync'),
  /// Test async endpoint
  testAsync('https://terminal-api-test.adyen.com/async'),
  /// Live sync endpoint for Europe
  euLiveSync('https://terminal-api-live.adyen.com/sync'),
  /// Live async endpoint for Europe
  euLiveAsync('https://terminal-api-live.adyen.com/async'),
  /// Live sync endpoint for Australia
  auLiveSync('https://terminal-api-live-au.adyen.com/sync'),
  /// Live async endpoint for Australia
  auLiveAsync('https://terminal-api-live-au.adyen.com/async'),
  /// Live sync endpoint for US
  usLiveSync('https://terminal-api-live-us.adyen.com/sync'),
  /// Live async endpoint for US
  usLiveAsync('https://terminal-api-live-us.adyen.com/async');

  final String url;

  const Endpoint(this.url);
}
