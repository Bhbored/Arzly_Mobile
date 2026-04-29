import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum HobbyGameType {
  @JsonValue('BoardGames')
  boardGames,
  @JsonValue('CardGames')
  cardGames,
  @JsonValue('DronesAndRC')
  dronesAndRC,
  @JsonValue('ModelCars')
  modelCars,
  @JsonValue('Puzzles')
  puzzles,
  @JsonValue('WoodAndPlasticModelKits')
  woodAndPlasticModelKits,
  @JsonValue('Other')
  other,
}
