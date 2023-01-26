// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseData _$ResponseDataFromJson(Map<String, dynamic> json) => ResponseData(
      result: $enumDecode(_$ResultEnumMap, json['Result']),
      additionalResponse: json['AdditionalResponse'] as String?,
      errorCondition:
          $enumDecodeNullable(_$ErrorConditionEnumMap, json['ErrorCondition']),
    );

Map<String, dynamic> _$ResponseDataToJson(ResponseData instance) =>
    <String, dynamic>{
      'Result': _$ResultEnumMap[instance.result]!,
      'AdditionalResponse': instance.additionalResponse,
      'ErrorCondition': _$ErrorConditionEnumMap[instance.errorCondition],
    };

const _$ResultEnumMap = {
  Result.success: 'Success',
  Result.failure: 'Failure',
  Result.partial: 'Partial',
};

const _$ErrorConditionEnumMap = {
  ErrorCondition.aborted: 'Aborted',
  ErrorCondition.busy: 'Busy',
  ErrorCondition.cancel: 'Cancel',
  ErrorCondition.communicationTimeout: 'Communication timeout',
  ErrorCondition.deviceOut: 'DeviceOut',
  ErrorCondition.insertedCard: 'InsertedCard',
  ErrorCondition.inProgress: 'InProgress',
  ErrorCondition.loggedOut: 'LoggedOut',
  ErrorCondition.messageFormat: 'MessageFormat',
  ErrorCondition.notAllowed: 'NotAllowed',
  ErrorCondition.notFound: 'NotFound',
  ErrorCondition.paymentRestriction: 'PaymentRestriction',
  ErrorCondition.refusal: 'Refusal',
  ErrorCondition.unavailableDevice: 'UnavailableDevice',
  ErrorCondition.unavailableService: 'UnavailableService',
  ErrorCondition.invalidCard: 'InvalidCard',
  ErrorCondition.unreachableHost: 'UnreachableHost',
  ErrorCondition.wrongPin: 'WrongPIN',
};
