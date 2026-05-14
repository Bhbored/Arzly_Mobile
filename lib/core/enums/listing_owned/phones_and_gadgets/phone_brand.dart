import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum PhoneBrand {
  @JsonValue('Apple')
  apple,
  @JsonValue('Samsung')
  samsung,
  @JsonValue('Huawei')
  huawei,
  @JsonValue('Xiaomi')
  xiaomi,
  @JsonValue('OnePlus')
  onePlus,
  @JsonValue('Oppo')
  oppo,
  @JsonValue('Vivo')
  vivo,
  @JsonValue('Realme')
  realme,
  @JsonValue('Google')
  google,
  @JsonValue('Motorola')
  motorola,
  @JsonValue('Nokia')
  nokia,
  @JsonValue('Sony')
  sony,
  @JsonValue('LG')
  lG,
  @JsonValue('Asus')
  asus,
  @JsonValue('Lenovo')
  lenovo,
  @JsonValue('Honor')
  honor,
  @JsonValue('Infinix')
  infinix,
  @JsonValue('Tecno')
  tecno,
  @JsonValue('Alcatel')
  alcatel,
  @JsonValue('Blackberry')
  blackberry,
  @JsonValue('HTC')
  hTC,
  @JsonValue('Other')
  other,
}

extension PhoneBrandDisplay on PhoneBrand {
  String get label => switch (this) {
        PhoneBrand.apple => 'Apple',
        PhoneBrand.samsung => 'Samsung',
        PhoneBrand.huawei => 'Huawei',
        PhoneBrand.xiaomi => 'Xiaomi',
        PhoneBrand.onePlus => 'OnePlus',
        PhoneBrand.oppo => 'Oppo',
        PhoneBrand.vivo => 'Vivo',
        PhoneBrand.realme => 'Realme',
        PhoneBrand.google => 'Google',
        PhoneBrand.motorola => 'Motorola',
        PhoneBrand.nokia => 'Nokia',
        PhoneBrand.sony => 'Sony',
        PhoneBrand.lG => 'LG',
        PhoneBrand.asus => 'Asus',
        PhoneBrand.lenovo => 'Lenovo',
        PhoneBrand.honor => 'Honor',
        PhoneBrand.infinix => 'Infinix',
        PhoneBrand.tecno => 'Tecno',
        PhoneBrand.alcatel => 'Alcatel',
        PhoneBrand.blackberry => 'Blackberry',
        PhoneBrand.hTC => 'HTC',
        PhoneBrand.other => 'Other',
      };
}
