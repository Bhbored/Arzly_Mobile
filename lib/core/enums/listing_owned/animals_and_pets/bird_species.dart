import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum BirdSpecies {
  @JsonValue('Parrot')
  parrot,
  @JsonValue('Canary')
  canary,
  @JsonValue('Budgie')
  budgie,
  @JsonValue('Cockatiel')
  cockatiel,
  @JsonValue('Lovebird')
  lovebird,
  @JsonValue('Macaw')
  macaw,
  @JsonValue('Cockatoo')
  cockatoo,
  @JsonValue('Finch')
  finch,
  @JsonValue('Pigeon')
  pigeon,
  @JsonValue('Dove')
  dove,
  @JsonValue('Other')
  other,
}
