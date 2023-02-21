import 'package:adyen_payment/src/factory/request_factory.dart';
import 'package:adyen_payment/src/model/config.dart';
import 'package:adyen_payment/src/model/payment/poi_data.dart';
import 'package:adyen_payment/src/model/refund/reversal_reason.dart';
import 'package:adyen_payment/src/model/response/make_payment_response.dart';
import 'package:adyen_payment/src/model/response/referenced_refund_payment_response.dart';
import 'package:adyen_payment/src/model/response/transaction_status_response.dart';
import 'package:dio/dio.dart';

/// Service that allow interact with the Adyen terminal.
class AdyenTerminalService {
  final Dio _dio;
  final PointOfSaleConfig config;
  final RequestFactory requestFactory;

  AdyenTerminalService({
    required this.config,
    this.requestFactory = const RequestFactory(),
    Dio? dio,
  }) : _dio = dio ?? _createDefaultDio(config);

  /// Ask terminal to take a payment
  Future<MakePaymentResponse> requestPayment({
    required double amount,
  }) async {
    final request = requestFactory.createPaymentRequest(
      amount: amount,
      config: config,
    );

    final result = await _dio.post(
      '',
      data: request,
    );

    return MakePaymentResponse.fromJson(result.data);
  }

  /// Ask terminal about status of the last payment request.
  Future<TransactionStatusResponse> requestStatus() async {
    final request = requestFactory.createTransactionStatusRequest(
      config: config,
    );

    final result = await _dio.post(
      '',
      data: request,
    );

    return TransactionStatusResponse.fromJson(result.data);
  }

  /// Ask terminal about status of the last payment request.
  Future<ReferencedRefundResponse> refundByReference({
    required POIData transaction,
    ReversalReason reason = ReversalReason.merchantCancel,
  }) async {
    final request = requestFactory.createReferencedRefundRequest(
      transaction: transaction,
      reason: reason,
      config: config,
    );

    final result = await _dio.post(
      '',
      data: request,
    );

    return ReferencedRefundResponse.fromJson(result.data);
  }
}

// Create default dio for service
Dio _createDefaultDio(PointOfSaleConfig config) {
  final dio = Dio();
  dio.options = _buildBaseOptions(config.endpoint.url);
  dio.interceptors.add(_ApiKeyInterceptor(config));
  return dio;
}

BaseOptions _buildBaseOptions(String baseUrl) {
  const Duration timeout = Duration(seconds: 150);
  return BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: Duration(milliseconds: timeout.inMilliseconds),
    sendTimeout: Duration(milliseconds: timeout.inMilliseconds),
    receiveTimeout: Duration(milliseconds: timeout.inMilliseconds),
  );
}

class _ApiKeyInterceptor extends Interceptor {
  final PointOfSaleConfig _config;

  _ApiKeyInterceptor(this._config);

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
