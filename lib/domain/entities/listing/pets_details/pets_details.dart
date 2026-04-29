import 'package:arzly/core/enums/listing_owned/animals_and_pets/bird_age_group.dart';
import 'package:arzly/core/enums/listing_owned/animals_and_pets/bird_species.dart';
import 'package:arzly/core/enums/listing_owned/animals_and_pets/cat_age_range.dart';
import 'package:arzly/core/enums/listing_owned/animals_and_pets/cat_breed.dart';
import 'package:arzly/core/enums/listing_owned/animals_and_pets/dog_age_range.dart';
import 'package:arzly/core/enums/listing_owned/animals_and_pets/dog_breed.dart';
import 'package:arzly/core/enums/listing_owned/animals_and_pets/grooming_type.dart';
import 'package:arzly/core/enums/listing_owned/animals_and_pets/pet_accessory_type.dart';
import 'package:arzly/core/enums/listing_owned/animals_and_pets/pet_food_type.dart';
import 'package:arzly/core/enums/listing_owned/animals_and_pets/pet_gender.dart';
import 'package:arzly/core/enums/listing_owned/animals_and_pets/pet_service_type.dart';
import 'package:arzly/core/enums/listing_owned/animals_and_pets/pet_toy_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pets_details.freezed.dart';
part 'pets_details.g.dart';

@freezed
sealed class PetsDetails with _$PetsDetails {
  const factory PetsDetails({
    String? listingId,
    PetFoodType? petFoodType,
    PetToyType? petToyType,
    GroomingType? groomingType,
    PetAccessoryType? petAccessoryType,
    DogBreed? dogBreed,
    PetGender? gender,
    DogAgeRange? dogAgeRange,
    bool? isVaccinated,
    CatBreed? catBreed,
    CatAgeRange? catAgeRange,
    BirdSpecies? birdSpecies,
    BirdAgeGroup? birdAgeGroup,
    String? animalType,
    PetServiceType? petServiceType,
  }) = _PetsDetails;

  factory PetsDetails.fromJson(Map<String, dynamic> json) =>
      _$PetsDetailsFromJson(json);
}
