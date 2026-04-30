import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum MotorcycleType {
  @JsonValue('ATV')
  atv,
  @JsonValue('Motorcycle')
  motorcycle,
  @JsonValue('Buggy')
  buggy,
  @JsonValue('other')
  other,
}
