import 'package:adyen_payment/src/factory/id_factory.dart';
import 'package:adyen_payment/src/model/config.dart';
import 'package:adyen_payment/src/model/header/message_category.dart';
import 'package:adyen_payment/src/model/header/message_class.dart';
import 'package:adyen_payment/src/model/header/message_header.dart';
import 'package:adyen_payment/src/model/header/message_type.dart';

/// Factory for headers instances.
class HeaderFactory {
  final IdFactory idFactory;

  const HeaderFactory({this.idFactory = const IdFactory()});

  /// Create header part for the payment request.
  MessageHeader createPaymentHeader({required PointOfSaleConfig config}) {
    return MessageHeader(
      messageClass: MessageClass.service,
      messageCategory: MessageCategory.payment,
      messageType: MessageType.request,
      serviceId: idFactory.generateTimeHash(),
      saleId: config.saleId,
      poiId: config.poiId,
    );
  }

  /// Create header part for the abort payment request.
  MessageHeader createAbortHeader({required PointOfSaleConfig config}) {
    return MessageHeader(
      messageClass: MessageClass.service,
      messageCategory: MessageCategory.abort,
      messageType: MessageType.request,
      serviceId: idFactory.generateTimeHash(),
      saleId: config.saleId,
      poiId: config.poiId,
    );
  }

  /// Create header part for the transaction status request.
  MessageHeader createStatusHeader({required PointOfSaleConfig config}) {
    return MessageHeader(
      messageClass: MessageClass.service,
      messageCategory: MessageCategory.transactionStatus,
      messageType: MessageType.request,
      serviceId: idFactory.generateTimeHash(),
      saleId: config.saleId,
      poiId: config.poiId,
    );
  }

  /// Create header part for the refund.
  MessageHeader createReversalHeader({required PointOfSaleConfig config}) {
    return MessageHeader(
      messageClass: MessageClass.service,
      messageCategory: MessageCategory.reversal,
      messageType: MessageType.request,
      serviceId: idFactory.generateTimeHash(),
      saleId: config.saleId,
      poiId: config.poiId,
    );
  }
}
