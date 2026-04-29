import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum FloorLevel {
  @JsonValue('Basement')
  basement,
  @JsonValue('GroundFloor')
  groundFloor,
  @JsonValue('First')
  first,
  @JsonValue('Second')
  second,
  @JsonValue('Third')
  third,
  @JsonValue('Fourth')
  fourth,
  @JsonValue('Fifth')
  fifth,
  @JsonValue('Sixth')
  sixth,
  @JsonValue('Seventh')
  seventh,
  @JsonValue('Eighth')
  eighth,
  @JsonValue('Ninth')
  ninth,
  @JsonValue('Tenth')
  tenth,
  @JsonValue('TenPlus')
  tenPlus,
  @JsonValue('HighestLevel')
  highestLevel,
}
