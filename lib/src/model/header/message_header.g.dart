// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_header.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageHeader _$MessageHeaderFromJson(Map<String, dynamic> json) =>
    MessageHeader(
      protocolVersion:
          json['ProtocolVersion'] as String? ?? currentProtocolVersion,
      messageClass: $enumDecode(_$MessageClassEnumMap, json['MessageClass']),
      messageCategory:
          $enumDecode(_$MessageCategoryEnumMap, json['MessageCategory']),
      messageType: $enumDecode(_$MessageTypeEnumMap, json['MessageType']),
      serviceId: json['ServiceID'] as String,
      saleId: json['SaleID'] as String,
      poiId: json['POIID'] as String,
    );

Map<String, dynamic> _$MessageHeaderToJson(MessageHeader instance) =>
    <String, dynamic>{
      'ProtocolVersion': instance.protocolVersion,
      'MessageClass': _$MessageClassEnumMap[instance.messageClass]!,
      'MessageCategory': _$MessageCategoryEnumMap[instance.messageCategory]!,
      'MessageType': _$MessageTypeEnumMap[instance.messageType]!,
      'ServiceID': instance.serviceId,
      'SaleID': instance.saleId,
      'POIID': instance.poiId,
    };

const _$MessageClassEnumMap = {
  MessageClass.service: 'Service',
  MessageClass.device: 'Device',
  MessageClass.event: 'Event',
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

const _$MessageTypeEnumMap = {
  MessageType.request: 'Request',
  MessageType.response: 'Response',
  MessageType.notification: 'Notification',
};
