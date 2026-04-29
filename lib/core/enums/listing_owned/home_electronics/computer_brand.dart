import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum ComputerBrand {
  @JsonValue('Apple')
  apple,
  @JsonValue('Dell')
  dell,
  @JsonValue('HP')
  hP,
  @JsonValue('Lenovo')
  lenovo,
  @JsonValue('Asus')
  asus,
  @JsonValue('Acer')
  acer,
  @JsonValue('Microsoft')
  microsoft,
  @JsonValue('Samsung')
  samsung,
  @JsonValue('Huawei')
  huawei,
  @JsonValue('MSI')
  mSI,
  @JsonValue('Razer')
  razer,
  @JsonValue('Toshiba')
  toshiba,
  @JsonValue('Sony')
  sony,
  @JsonValue('Other')
  other,
}
