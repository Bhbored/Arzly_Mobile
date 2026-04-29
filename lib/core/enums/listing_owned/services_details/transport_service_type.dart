import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum TransportServiceType {
  @JsonValue('Driver')
  driver,
  @JsonValue('Delivery')
  delivery,
  @JsonValue('CarRepair')
  carRepair,
  @JsonValue('Towing')
  towing,
  @JsonValue('Other')
  other,
}
