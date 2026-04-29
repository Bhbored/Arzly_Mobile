import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum PetAccessoryType {
  @JsonValue('CollarsAndLeashes')
  collarsAndLeashes,
  @JsonValue('Harnesses')
  harnesses,
  @JsonValue('PetApparel')
  petApparel,
  @JsonValue('BowlsAndFeeders')
  bowlsAndFeeders,
  @JsonValue('PetTravelAccessories')
  petTravelAccessories,
  @JsonValue('PetCratesAndCages')
  petCratesAndCages,
  @JsonValue('PetFurnitureAndEnclosures')
  petFurnitureAndEnclosures,
  @JsonValue('Other')
  other,
}
