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

extension AccessoryBrandDisplay on AccessoryBrand {
  String get label => switch (this) {
        AccessoryBrand.apple => 'Apple',
        AccessoryBrand.samsung => 'Samsung',
        AccessoryBrand.anker => 'Anker',
        AccessoryBrand.belkin => 'Belkin',
        AccessoryBrand.spigen => 'Spigen',
        AccessoryBrand.otterBox => 'OtterBox',
        AccessoryBrand.uag => 'UAG',
        AccessoryBrand.baseus => 'Baseus',
        AccessoryBrand.xiaomi => 'Xiaomi',
        AccessoryBrand.huawei => 'Huawei',
        AccessoryBrand.jBL => 'JBL',
        AccessoryBrand.sony => 'Sony',
        AccessoryBrand.bose => 'Bose',
        AccessoryBrand.beats => 'Beats',
        AccessoryBrand.sennheiser => 'Sennheiser',
        AccessoryBrand.logitech => 'Logitech',
        AccessoryBrand.other => 'Other',
      };
}
