import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum RamSize {
  @JsonValue('GB4')
  gb4,
  @JsonValue('GB8')
  gb8,
  @JsonValue('GB12')
  gb12,
  @JsonValue('GB16')
  gb16,
  @JsonValue('GB24')
  gb24,
  @JsonValue('GB32')
  gb32,
  @JsonValue('GB64')
  gb64,
  @JsonValue('Other')
  other,
}
