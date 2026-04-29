import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum EventServiceType {
  @JsonValue('DJ')
  dJ,
  @JsonValue('EventPlanning')
  eventPlanning,
  @JsonValue('Decoration')
  decoration,
  @JsonValue('SoundSystem')
  soundSystem,
  @JsonValue('Other')
  other,
}
