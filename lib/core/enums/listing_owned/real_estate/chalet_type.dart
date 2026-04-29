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
