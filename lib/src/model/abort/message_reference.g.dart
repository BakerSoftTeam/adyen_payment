// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageReference _$MessageReferenceFromJson(Map<String, dynamic> json) =>
    MessageReference(
      serviceId: json['ServiceID'] as String?,
      deviceId: json['DeviceID'] as String?,
      saleId: json['SaleID'] as String?,
      poiId: json['POIID'] as String?,
      messageCategory: $enumDecodeNullable(
          _$MessageCategoryEnumMap, json['MessageCategory']),
    );

Map<String, dynamic> _$MessageReferenceToJson(MessageReference instance) =>
    <String, dynamic>{
      'ServiceID': instance.serviceId,
      'DeviceID': instance.deviceId,
      'SaleID': instance.saleId,
      'POIID': instance.poiId,
      'MessageCategory': _$MessageCategoryEnumMap[instance.messageCategory],
    };

const _$MessageCategoryEnumMap = {
  MessageCategory.abort: 'Abort',
  MessageCategory.admin: 'Admin',
  MessageCategory.balanceInquiry: 'BalanceInquiry',
  MessageCategory.batch: 'Batch',
  MessageCategory.cardAcquisition: 'CardAcquisition',
  MessageCategory.cardReaderAPDU: 'CardReaderAPDU',
  MessageCategory.cardReaderInit: 'CardReaderInit',
  MessageCategory.cardReaderPowerOff: 'CardReaderPowerOff',
  MessageCategory.diagnosis: 'Diagnosis',
  MessageCategory.display: 'Display',
  MessageCategory.enableService: 'EnableService',
  MessageCategory.event: 'Event',
  MessageCategory.getTotals: 'GetTotals',
  MessageCategory.input: 'Input',
  MessageCategory.inputUpdate: 'InputUpdate',
  MessageCategory.login: 'Login',
  MessageCategory.logout: 'Logout',
  MessageCategory.loyalty: 'Loyalty',
  MessageCategory.payment: 'Payment',
  MessageCategory.pIN: 'PIN',
  MessageCategory.print: 'Print',
  MessageCategory.reconciliation: 'Reconciliation',
  MessageCategory.reversal: 'Reversal',
  MessageCategory.sound: 'Sound',
  MessageCategory.storedValue: 'StoredValue',
  MessageCategory.transactionStatus: 'TransactionStatus',
  MessageCategory.transmit: 'Transmit',
};
