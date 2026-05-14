import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum ChaletType {
  @JsonValue('MountainLocation')
  mountainLocation,
  @JsonValue('SeaLocation')
  seaLocation,
  @JsonValue('Other')
  other,
}

extension ChaletTypeDisplay on ChaletType {
  String get label => switch (this) {
        ChaletType.mountainLocation => 'Mountain location',
        ChaletType.seaLocation => 'Sea location',
        ChaletType.other => 'Other',
      };
}
