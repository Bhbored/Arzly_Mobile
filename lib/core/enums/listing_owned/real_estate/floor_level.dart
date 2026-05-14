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

extension FloorLevelDisplay on FloorLevel {
  String get label => switch (this) {
        FloorLevel.basement => 'Basement',
        FloorLevel.groundFloor => 'Ground floor',
        FloorLevel.first => '1st floor',
        FloorLevel.second => '2nd floor',
        FloorLevel.third => '3rd floor',
        FloorLevel.fourth => '4th floor',
        FloorLevel.fifth => '5th floor',
        FloorLevel.sixth => '6th floor',
        FloorLevel.seventh => '7th floor',
        FloorLevel.eighth => '8th floor',
        FloorLevel.ninth => '9th floor',
        FloorLevel.tenth => '10th floor',
        FloorLevel.tenPlus => '10+ floors',
        FloorLevel.highestLevel => 'Highest level',
      };
}
