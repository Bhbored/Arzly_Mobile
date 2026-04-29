import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum GameRoomType {
  @JsonValue('Babyfoot')
  babyfoot,
  @JsonValue('Bowling')
  bowling,
  @JsonValue('Darts')
  darts,
  @JsonValue('PoolBilliard')
  poolBilliard,
  @JsonValue('Snooker')
  snooker,
  @JsonValue('AirHockey')
  airHockey,
  @JsonValue('Other')
  other,
}
