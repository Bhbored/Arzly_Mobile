import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum CameraType {
  @JsonValue('DigitalCamera')
  digitalCamera,
  @JsonValue('Drone')
  drone,
  @JsonValue('FilmCamera')
  filmCamera,
  @JsonValue('FilmingEquipment')
  filmingEquipment,
  @JsonValue('LensesAndParts')
  lensesAndParts,
  @JsonValue('SecurityCamera')
  securityCamera,
  @JsonValue('VideoCamera')
  videoCamera,
  @JsonValue('Other')
  other,
}
