import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum InstrumentType {
  @JsonValue('DJEquipment')
  djEquipment,
  @JsonValue('GuitarsAndStrings')
  guitarsAndStrings,
  @JsonValue('PercussionAndDrums')
  percussionAndDrums,
  @JsonValue('PianosAndKeyboards')
  pianosAndKeyboards,
  @JsonValue('Others')
  others,
}
