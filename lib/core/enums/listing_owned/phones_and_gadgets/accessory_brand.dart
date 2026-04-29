import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum AccessoryBrand {
  @JsonValue('Apple')
  apple,
  @JsonValue('Samsung')
  samsung,
  @JsonValue('Anker')
  anker,
  @JsonValue('Belkin')
  belkin,
  @JsonValue('Spigen')
  spigen,
  @JsonValue('OtterBox')
  otterBox,
  @JsonValue('UAG')
  uag,
  @JsonValue('Baseus')
  baseus,
  @JsonValue('Xiaomi')
  xiaomi,
  @JsonValue('Huawei')
  huawei,
  @JsonValue('JBL')
  jBL,
  @JsonValue('Sony')
  sony,
  @JsonValue('Bose')
  bose,
  @JsonValue('Beats')
  beats,
  @JsonValue('Sennheiser')
  sennheiser,
  @JsonValue('Logitech')
  logitech,
  @JsonValue('Other')
  other,
}
