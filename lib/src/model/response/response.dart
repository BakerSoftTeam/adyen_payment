import 'package:adyen_payment/src/model/response/data/sale_to_poi_response.dart';
import 'package:json_annotation/json_annotation.dart';

/// Base response object.
abstract class Response<T extends SaleToPOIResponse> {
  @JsonKey(name: 'SaleToPOIResponse')
  final T responseData;

  const Response({
    required this.responseData,
  });
}
