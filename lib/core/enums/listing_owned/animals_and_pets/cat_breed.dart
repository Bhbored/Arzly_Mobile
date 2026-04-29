import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum CatBreed {
  @JsonValue('Persian')
  persian,
  @JsonValue('Siamese')
  siamese,
  @JsonValue('MaineCoon')
  maineCoon,
  @JsonValue('Bengal')
  bengal,
  @JsonValue('Ragdoll')
  ragdoll,
  @JsonValue('Sphynx')
  sphynx,
  @JsonValue('BritishShorthair')
  britishShorthair,
  @JsonValue('ScottishFold')
  scottishFold,
  @JsonValue('Himalayan')
  himalayan,
  @JsonValue('Abyssinian')
  abyssinian,
  @JsonValue('TurkishAngora')
  turkishAngora,
  @JsonValue('RussianBlue')
  russianBlue,
  @JsonValue('MixedBreed')
  mixedBreed,
  @JsonValue('Other')
  other,
}
