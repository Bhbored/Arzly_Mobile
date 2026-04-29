import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum GamingBrand {
  @JsonValue('Microsoft')
  microsoft,
  @JsonValue('Sony')
  sony,
  @JsonValue('Nintendo')
  nintendo,
  @JsonValue('Valve')
  valve,
  @JsonValue('ASUS')
  aSUS,
  @JsonValue('Logitech')
  logitech,
  @JsonValue('Razer')
  razer,
  @JsonValue('Other')
  other,
}
