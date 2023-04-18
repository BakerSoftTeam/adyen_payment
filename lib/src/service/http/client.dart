import 'dart:io';

import 'package:adyen_payment/src/model/config.dart';
import 'package:adyen_payment/src/service/http/api_key_interceptor.dart';
import 'package:dio/dio.dart';

/// Function for additional setup dio.
typedef DioClientSetupDelegate = void Function(Dio client);

/// Creates default dio for the terminal service
Dio createDefaultDioForPaymentSystem(PointOfSaleConfig config) {
  final dio = Dio();
  dio.options = _buildBaseOptions(config.endpoint.url);
  dio.interceptors.add(ApiKeyInterceptor(config));
  return dio;
}

BaseOptions _buildBaseOptions(String baseUrl) {
  const Duration timeout = Duration(seconds: 150);
  return BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: timeout,
    sendTimeout: timeout,
    receiveTimeout: timeout,
    contentType: ContentType.json.toString(),
  );
}