import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum Processor {
  @JsonValue('i3')
  i3,
  @JsonValue('i5')
  i5,
  @JsonValue('i7')
  i7,
  @JsonValue('i9')
  i9,
  @JsonValue('Ryzen3')
  ryzen3,
  @JsonValue('Ryzen5')
  ryzen5,
  @JsonValue('Ryzen7')
  ryzen7,
  @JsonValue('Ryzen9')
  ryzen9,
  @JsonValue('M1')
  m1,
  @JsonValue('M2')
  m2,
  @JsonValue('M3')
  m3,
  @JsonValue('Pentium')
  pentium,
  @JsonValue('Celeron')
  celeron,
  @JsonValue('Other')
  other,
}
