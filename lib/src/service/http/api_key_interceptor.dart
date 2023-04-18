import 'package:adyen_payment/src/model/config.dart';
import 'package:dio/dio.dart';

/// Interceptor allows to auth requests on the Adyen side.
class ApiKeyInterceptor extends Interceptor {
  final PointOfSaleConfig _config;

  ApiKeyInterceptor(this._config);

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    try {
      options.headers.addAll({
        'x-API-key': _config.apiKey,
      });

      handler.next(options);
    } catch (error) {
      if (error is DioError) {
        handler.reject(error);
      } else {
        handler.reject(DioError(requestOptions: options, error: error));
      }
    }
  }
}