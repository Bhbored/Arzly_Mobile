import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum GameGenre {
  @JsonValue('Action')
  action,
  @JsonValue('Adventure')
  adventure,
  @JsonValue('RPG')
  rPG,
  @JsonValue('Shooter')
  shooter,
  @JsonValue('Sports')
  sports,
  @JsonValue('Racing')
  racing,
  @JsonValue('Fighting')
  fighting,
  @JsonValue('Horror')
  horror,
  @JsonValue('Puzzle')
  puzzle,
  @JsonValue('Simulation')
  simulation,
  @JsonValue('Strategy')
  strategy,
  @JsonValue('Platformer')
  platformer,
  @JsonValue('OpenWorld')
  openWorld,
  @JsonValue('BattleRoyale')
  battleRoyale,
  @JsonValue('Other')
  other,
}
