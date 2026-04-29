import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum DisplayTechnology {
  @JsonValue('LED')
  lED,
  @JsonValue('LCD')
  lCD,
  @JsonValue('OLED')
  oLED,
  @JsonValue('QLED')
  qLED,
  @JsonValue('Other')
  other,
}
