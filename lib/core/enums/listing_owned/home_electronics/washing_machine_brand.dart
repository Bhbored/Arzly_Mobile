import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum WashingMachineBrand {
  @JsonValue('Samsung')
  samsung,
  @JsonValue('LG')
  lG,
  @JsonValue('Bosch')
  bosch,
  @JsonValue('Siemens')
  siemens,
  @JsonValue('Whirlpool')
  whirlpool,
  @JsonValue('Miele')
  miele,
  @JsonValue('Electrolux')
  electrolux,
  @JsonValue('Haier')
  haier,
  @JsonValue('Beko')
  beko,
  @JsonValue('Indesit')
  indesit,
  @JsonValue('Ariston')
  ariston,
  @JsonValue('Other')
  other,
}
