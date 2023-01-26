import 'package:json_annotation/json_annotation.dart';

/// The type request/response.
enum MessageCategory {
  @JsonValue('Abort')
  abort('Abort'),
  @JsonValue('Admin')
  admin('Admin'),
  @JsonValue('BalanceInquiry')
  balanceInquiry('BalanceInquiry'),
  @JsonValue('Batch')
  batch('Batch'),
  @JsonValue('CardAcquisition')
  cardAcquisition('CardAcquisition'),
  @JsonValue('CardReaderAPDU')
  cardReaderAPDU('CardReaderAPDU'),
  @JsonValue('CardReaderInit')
  cardReaderInit('CardReaderInit'),
  @JsonValue('CardReaderPowerOff')
  cardReaderPowerOff('CardReaderPowerOff'),
  @JsonValue('Diagnosis')
  diagnosis('Diagnosis'),
  @JsonValue('Display')
  display('Display'),
  @JsonValue('EnableService')
  enableService('EnableService'),
  @JsonValue('Event')
  event('Event'),
  @JsonValue('GetTotals')
  getTotals('GetTotals'),
  @JsonValue('Input')
  input('Input'),
  @JsonValue('InputUpdate')
  inputUpdate('InputUpdate'),
  @JsonValue('Login')
  login('Login'),
  @JsonValue('Logout')
  logout('Logout'),
  @JsonValue('Loyalty')
  loyalty('Loyalty'),
  @JsonValue('Payment')
  payment('Payment'),
  @JsonValue('PIN')
  pIN('PIN'),
  @JsonValue('Print')
  print('Print'),
  @JsonValue('Reconciliation')
  reconciliation('Reconciliation'),
  @JsonValue('Reversal')
  reversal('Reversal'),
  @JsonValue('Sound')
  sound('Sound'),
  @JsonValue('StoredValue')
  storedValue('StoredValue'),
  @JsonValue('TransactionStatus')
  transactionStatus('TransactionStatus'),
  @JsonValue('Transmit')
  transmit('Transmit');

  final String title;

  const MessageCategory(this.title);
}
