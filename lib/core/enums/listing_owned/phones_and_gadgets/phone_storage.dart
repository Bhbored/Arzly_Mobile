import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum PhoneStorage {
  @JsonValue('GB32')
  gb32,
  @JsonValue('GB64')
  gb64,
  @JsonValue('GB128')
  gb128,
  @JsonValue('GB256')
  gb256,
  @JsonValue('GB512')
  gb512,
  @JsonValue('TB1')
  tb1,
  @JsonValue('TB2')
  tb2,
}
