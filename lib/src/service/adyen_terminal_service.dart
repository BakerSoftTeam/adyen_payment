import 'package:adyen_payment/src/factory/request_factory.dart';
import 'package:adyen_payment/src/model/config.dart';
import 'package:adyen_payment/src/model/payment/poi_data.dart';
import 'package:adyen_payment/src/model/refund/reversal_reason.dart';
import 'package:adyen_payment/src/model/response/make_payment_response.dart';
import 'package:adyen_payment/src/model/response/referenced_refund_payment_response.dart';
import 'package:adyen_payment/src/model/response/transaction_status_response.dart';
import 'package:adyen_payment/src/service/http/client.dart';
import 'package:adyen_payment/src/service/terminal_service_response.dart';
import 'package:dio/dio.dart';

/// Service that allow interact with the Adyen terminal.
class AdyenTerminalService implements IAdyenTerminalService {
  final Dio _dio;
  final PointOfSaleConfig config;
  final RequestFactory requestFactory;

  AdyenTerminalService({
    required this.config,
    this.requestFactory = const RequestFactory(),
    Dio? dio,
    DioClientSetupDelegate? setupDelegate,
  }) : _dio = dio ?? createDefaultDioForPaymentSystem(config) {
    if (setupDelegate != null) {
      setupDelegate(_dio);
    }
  }

  @override
  TerminalServiceResponse<MakePaymentResponse> requestPayment({
    required double amount,
    String? transactionId,
  }) {
    final request = requestFactory.createPaymentRequest(
      amount: amount,
      config: config,
      transactionId: transactionId,
    );

    final resultFuture = _dio.post(
      '',
      data: request,
    );

    return TerminalServiceResponse<MakePaymentResponse>(
      serviceId: request.requestData.header.serviceId,
      future: resultFuture.then(
        (value) => MakePaymentResponse.fromJson(value.data),
      ),
    );
  }

  @override
  TerminalServiceResponse<void> abortPaymentRequest({
    required String serviceId,
  }) {
    final request = requestFactory.createAbortPaymentRequest(
      serviceId: serviceId,
      config: config,
    );

    final resultFuture = _dio.post('',
        data: request,
        options: Options(
          responseType: ResponseType.plain,
        ));

    return TerminalServiceResponse<void>(
      serviceId: request.requestData.header.serviceId,
      future: resultFuture,
    );
  }

  @override
  TerminalServiceResponse<TransactionStatusResponse> requestStatus() {
    final request = requestFactory.createTransactionStatusRequest(
      config: config,
    );

    final resultFuture = _dio.post(
      '',
      data: request,
    );

    return TerminalServiceResponse<TransactionStatusResponse>(
      serviceId: request.requestData.header.serviceId,
      future: resultFuture.then(
        (value) => TransactionStatusResponse.fromJson(value.data),
      ),
    );
  }

  @override
  TerminalServiceResponse<ReferencedRefundResponse> refundByReference({
    required POIData transaction,
    ReversalReason reason = ReversalReason.merchantCancel,
  }) {
    final request = requestFactory.createReferencedRefundRequest(
      transaction: transaction,
      reason: reason,
      config: config,
    );

    final resultFuture = _dio.post(
      '',
      data: request,
    );

    return TerminalServiceResponse<ReferencedRefundResponse>(
      serviceId: request.requestData.header.serviceId,
      future: resultFuture.then(
        (value) => ReferencedRefundResponse.fromJson(value.data),
      ),
    );
  }
}

/// Interface describes allowed interaction with payment system.
abstract class IAdyenTerminalService {
  /// Ask terminal to take a payment
  TerminalServiceResponse<MakePaymentResponse> requestPayment({
    required double amount,
    String? transactionId,
  });

  /// Ask terminal to stop ask payment with [serviceId].
  /// Has a sense only for not completed payment request.
  TerminalServiceResponse<void> abortPaymentRequest({
    required String serviceId,
  });

  /// Ask terminal about status of the last payment request.
  TerminalServiceResponse<TransactionStatusResponse> requestStatus();

  /// Ask terminal about making refund.
  TerminalServiceResponse<ReferencedRefundResponse> refundByReference({
    required POIData transaction,
    ReversalReason reason = ReversalReason.merchantCancel,
  });
}
