import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum CameraBrand {
  @JsonValue('Canon')
  canon,
  @JsonValue('Nikon')
  nikon,
  @JsonValue('Sony')
  sony,
  @JsonValue('Fujifilm')
  fujifilm,
  @JsonValue('Panasonic')
  panasonic,
  @JsonValue('Olympus')
  olympus,
  @JsonValue('Leica')
  leica,
  @JsonValue('GoPro')
  goPro,
  @JsonValue('DJI')
  dJI,
  @JsonValue('Pentax')
  pentax,
  @JsonValue('Hasselblad')
  hasselblad,
  @JsonValue('Other')
  other,
}
