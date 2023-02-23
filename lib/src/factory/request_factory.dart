import 'package:adyen_payment/src/factory/header_factory.dart';
import 'package:adyen_payment/src/factory/id_factory.dart';
import 'package:adyen_payment/src/model/config.dart';
import 'package:adyen_payment/src/model/payment/amounts_req.dart';
import 'package:adyen_payment/src/model/payment/payment_request.dart';
import 'package:adyen_payment/src/model/payment/payment_transaction.dart';
import 'package:adyen_payment/src/model/payment/poi_data.dart';
import 'package:adyen_payment/src/model/payment/sale_data.dart';
import 'package:adyen_payment/src/model/payment/sale_transaction_id.dart';
import 'package:adyen_payment/src/model/refund/reversal_reason.dart';
import 'package:adyen_payment/src/model/refund/reversal_request.dart';
import 'package:adyen_payment/src/model/request/data/payment_sale_to_poi_request.dart';
import 'package:adyen_payment/src/model/request/data/referenced_refund_sale_to_poi_request.dart';
import 'package:adyen_payment/src/model/request/data/transaction_status_sale_to_poi_request.dart';
import 'package:adyen_payment/src/model/request/make_payment.dart';
import 'package:adyen_payment/src/model/request/referenced_refund.dart';
import 'package:adyen_payment/src/model/request/transaction_status.dart';

/// Creator of the request instances.
class RequestFactory {
  final HeaderFactory headerFactory;
  final IdFactory idFactory;

  const RequestFactory({
    this.headerFactory = const HeaderFactory(),
    this.idFactory = const IdFactory(),
  });

  /// Creates object for request a payment
  MakePayment createPaymentRequest({
    required double amount,
    String? currency,
    String? transactionId,
    required PointOfSaleConfig config,
  }) {
    return MakePayment(
      requestData: PaymentSaleToPoiRequest(
        header: headerFactory.createPaymentHeader(config: config),
        paymentRequest: _createPayment(
          amount: amount,
          currency: currency ?? config.defaultCurrency,
          transactionId: transactionId,
        ),
      ),
    );
  }

  /// Creates object for request the status of transaction
  TransactionStatus createTransactionStatusRequest({
    required PointOfSaleConfig config,
  }) {
    return TransactionStatus(
      requestData: TransactionStatusSaleToPoiRequest(
        header: headerFactory.createStatusHeader(config: config),
      ),
    );
  }

  /// Creates object for request the refund by reference.
  ReferencedRefund createReferencedRefundRequest({
    required POIData transaction,
    required ReversalReason reason,
    required PointOfSaleConfig config,
  }) {
    return ReferencedRefund(
      requestData: ReferencedRefundSaleToPoiRequest(
        header: headerFactory.createReversalHeader(config: config),
        reversalRequest: _createReversal(transaction, reason)
      ),
    );
  }

  PaymentRequest _createPayment({
    required double amount,
    required String currency,
    String? transactionId,
  }) {
    return PaymentRequest(
      saleData: SaleData(
        saleTransactionId: SaleTransactionId(
          transactionId: transactionId ?? idFactory.generateUuid(),
        ),
      ),
      paymentTransaction: PaymentTransaction(
        amountsReq: AmountsReq(
          currency: currency,
          requestedAmount: amount,
        ),
      ),
    );
  }

  ReversalRequest _createReversal(POIData transaction, ReversalReason reason) {
    return ReversalRequest(
      transaction: transaction,
      reason: reason,
    );
  }
}
