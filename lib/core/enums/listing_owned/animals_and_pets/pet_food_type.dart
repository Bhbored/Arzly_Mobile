import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum PetFoodType {
  @JsonValue('CatFood')
  catFood,
  @JsonValue('DogFood')
  dogFood,
  @JsonValue('BirdFood')
  birdFood,
  @JsonValue('FishFood')
  fishFood,
  @JsonValue('Other')
  other,
}
