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

extension MotorcycleTypeDisplay on MotorcycleType {
  String get label => switch (this) {
        MotorcycleType.atv => 'ATV',
        MotorcycleType.motorcycle => 'Motorcycle',
        MotorcycleType.buggy => 'Buggy',
        MotorcycleType.other => 'Other',
      };
}
