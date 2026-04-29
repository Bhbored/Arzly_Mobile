import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum TVBrand {
  @JsonValue('Samsung')
  samsung,
  @JsonValue('LG')
  lG,
  @JsonValue('Sony')
  sony,
  @JsonValue('TCL')
  tCL,
  @JsonValue('Hisense')
  hisense,
  @JsonValue('Panasonic')
  panasonic,
  @JsonValue('Philips')
  philips,
  @JsonValue('Sharp')
  sharp,
  @JsonValue('Toshiba')
  toshiba,
  @JsonValue('Skyworth')
  skyworth,
  @JsonValue('Xiaomi')
  xiaomi,
  @JsonValue('Other')
  other,
}
