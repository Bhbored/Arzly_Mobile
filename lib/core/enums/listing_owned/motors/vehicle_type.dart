import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum VehicleType {
  @JsonValue('Cars')
  cars,
  @JsonValue('Motorcycles')
  motorcycles,
  @JsonValue('Trucks')
  trucks,
  @JsonValue('Buses')
  buses,
  @JsonValue('Other')
  other,
}
