import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum RacketSportType {
  @JsonValue('Padel')
  padel,
  @JsonValue('Badminton')
  badminton,
  @JsonValue('PingPong')
  pingPong,
  @JsonValue('Squash')
  squash,
  @JsonValue('Tennis')
  tennis,
  @JsonValue('Other')
  other,
}
