import 'package:adyen_payment/src/model/request/data/sale_to_poi_request.dart';
import 'package:json_annotation/json_annotation.dart';

/// Base request object.
abstract class Request<T extends SaleToPoiRequest> {
  @JsonKey(name: 'SaleToPOIRequest')
  final T requestData;

  const Request({
    required this.requestData,
  });
}
