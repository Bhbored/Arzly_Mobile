// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pets_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PetsDetails _$PetsDetailsFromJson(Map<String, dynamic> json) => _PetsDetails(
  listingId: json['listingId'] as String?,
  petFoodType: $enumDecodeNullable(_$PetFoodTypeEnumMap, json['petFoodType']),
  petToyType: $enumDecodeNullable(_$PetToyTypeEnumMap, json['petToyType']),
  groomingType: $enumDecodeNullable(
    _$GroomingTypeEnumMap,
    json['groomingType'],
  ),
  petAccessoryType: $enumDecodeNullable(
    _$PetAccessoryTypeEnumMap,
    json['petAccessoryType'],
  ),
  dogBreed: $enumDecodeNullable(_$DogBreedEnumMap, json['dogBreed']),
  gender: $enumDecodeNullable(_$PetGenderEnumMap, json['gender']),
  dogAgeRange: $enumDecodeNullable(_$DogAgeRangeEnumMap, json['dogAgeRange']),
  isVaccinated: json['isVaccinated'] as bool?,
  catBreed: $enumDecodeNullable(_$CatBreedEnumMap, json['catBreed']),
  catAgeRange: $enumDecodeNullable(_$CatAgeRangeEnumMap, json['catAgeRange']),
  birdSpecies: $enumDecodeNullable(_$BirdSpeciesEnumMap, json['birdSpecies']),
  birdAgeGroup: $enumDecodeNullable(
    _$BirdAgeGroupEnumMap,
    json['birdAgeGroup'],
  ),
  animalType: json['animalType'] as String?,
  petServiceType: $enumDecodeNullable(
    _$PetServiceTypeEnumMap,
    json['petServiceType'],
  ),
);

Map<String, dynamic> _$PetsDetailsToJson(_PetsDetails instance) =>
    <String, dynamic>{
      'listingId': instance.listingId,
      'petFoodType': _$PetFoodTypeEnumMap[instance.petFoodType],
      'petToyType': _$PetToyTypeEnumMap[instance.petToyType],
      'groomingType': _$GroomingTypeEnumMap[instance.groomingType],
      'petAccessoryType': _$PetAccessoryTypeEnumMap[instance.petAccessoryType],
      'dogBreed': _$DogBreedEnumMap[instance.dogBreed],
      'gender': _$PetGenderEnumMap[instance.gender],
      'dogAgeRange': _$DogAgeRangeEnumMap[instance.dogAgeRange],
      'isVaccinated': instance.isVaccinated,
      'catBreed': _$CatBreedEnumMap[instance.catBreed],
      'catAgeRange': _$CatAgeRangeEnumMap[instance.catAgeRange],
      'birdSpecies': _$BirdSpeciesEnumMap[instance.birdSpecies],
      'birdAgeGroup': _$BirdAgeGroupEnumMap[instance.birdAgeGroup],
      'animalType': instance.animalType,
      'petServiceType': _$PetServiceTypeEnumMap[instance.petServiceType],
    };

const _$PetFoodTypeEnumMap = {
  PetFoodType.catFood: 'CatFood',
  PetFoodType.dogFood: 'DogFood',
  PetFoodType.birdFood: 'BirdFood',
  PetFoodType.fishFood: 'FishFood',
  PetFoodType.other: 'Other',
};

const _$PetToyTypeEnumMap = {
  PetToyType.balls: 'Balls',
  PetToyType.chewToys: 'ChewToys',
  PetToyType.catnipToys: 'CatnipToys',
  PetToyType.featherToys: 'FeatherToys',
  PetToyType.laserToys: 'LaserToys',
  PetToyType.puzzleToys: 'PuzzleToys',
  PetToyType.plushToys: 'PlushToys',
  PetToyType.ropeToys: 'RopeToys',
  PetToyType.scratchingPosts: 'ScratchingPosts',
  PetToyType.squeakyToys: 'SqueakyToys',
  PetToyType.tunnels: 'Tunnels',
  PetToyType.other: 'Other',
};

const _$GroomingTypeEnumMap = {
  GroomingType.nailCare: 'NailCare',
  GroomingType.shampoo: 'Shampoo',
  GroomingType.brushes: 'Brushes',
  GroomingType.clippers: 'Clippers',
  GroomingType.earCare: 'EarCare',
  GroomingType.dentalCare: 'DentalCare',
  GroomingType.other: 'Other',
};

const _$PetAccessoryTypeEnumMap = {
  PetAccessoryType.collarsAndLeashes: 'CollarsAndLeashes',
  PetAccessoryType.harnesses: 'Harnesses',
  PetAccessoryType.petApparel: 'PetApparel',
  PetAccessoryType.bowlsAndFeeders: 'BowlsAndFeeders',
  PetAccessoryType.petTravelAccessories: 'PetTravelAccessories',
  PetAccessoryType.petCratesAndCages: 'PetCratesAndCages',
  PetAccessoryType.petFurnitureAndEnclosures: 'PetFurnitureAndEnclosures',
  PetAccessoryType.other: 'Other',
};

const _$DogBreedEnumMap = {
  DogBreed.labrador: 'Labrador',
  DogBreed.goldenRetriever: 'GoldenRetriever',
  DogBreed.germanShepherd: 'GermanShepherd',
  DogBreed.bulldog: 'Bulldog',
  DogBreed.poodle: 'Poodle',
  DogBreed.beagle: 'Beagle',
  DogBreed.rottweiler: 'Rottweiler',
  DogBreed.husky: 'Husky',
  DogBreed.shihTzu: 'ShihTzu',
  DogBreed.pomeranian: 'Pomeranian',
  DogBreed.chihuahua: 'Chihuahua',
  DogBreed.pitbull: 'Pitbull',
  DogBreed.dalmatian: 'Dalmatian',
  DogBreed.boxer: 'Boxer',
  DogBreed.cockerSpaniel: 'CockerSpaniel',
  DogBreed.maltese: 'Maltese',
  DogBreed.pug: 'Pug',
  DogBreed.borderCollie: 'BorderCollie',
  DogBreed.doberman: 'Doberman',
  DogBreed.greatDane: 'GreatDane',
  DogBreed.mixedBreed: 'MixedBreed',
  DogBreed.other: 'Other',
};

const _$PetGenderEnumMap = {PetGender.male: 'Male', PetGender.female: 'Female'};

const _$DogAgeRangeEnumMap = {
  DogAgeRange.puppy: 'Puppy',
  DogAgeRange.adult: 'Adult',
  DogAgeRange.mature: 'Mature',
  DogAgeRange.senior: 'Senior',
};

const _$CatBreedEnumMap = {
  CatBreed.persian: 'Persian',
  CatBreed.siamese: 'Siamese',
  CatBreed.maineCoon: 'MaineCoon',
  CatBreed.bengal: 'Bengal',
  CatBreed.ragdoll: 'Ragdoll',
  CatBreed.sphynx: 'Sphynx',
  CatBreed.britishShorthair: 'BritishShorthair',
  CatBreed.scottishFold: 'ScottishFold',
  CatBreed.himalayan: 'Himalayan',
  CatBreed.abyssinian: 'Abyssinian',
  CatBreed.turkishAngora: 'TurkishAngora',
  CatBreed.russianBlue: 'RussianBlue',
  CatBreed.mixedBreed: 'MixedBreed',
  CatBreed.other: 'Other',
};

const _$CatAgeRangeEnumMap = {
  CatAgeRange.kitten: 'Kitten',
  CatAgeRange.adult: 'Adult',
  CatAgeRange.mature: 'Mature',
  CatAgeRange.senior: 'Senior',
};

const _$BirdSpeciesEnumMap = {
  BirdSpecies.parrot: 'Parrot',
  BirdSpecies.canary: 'Canary',
  BirdSpecies.budgie: 'Budgie',
  BirdSpecies.cockatiel: 'Cockatiel',
  BirdSpecies.lovebird: 'Lovebird',
  BirdSpecies.macaw: 'Macaw',
  BirdSpecies.cockatoo: 'Cockatoo',
  BirdSpecies.finch: 'Finch',
  BirdSpecies.pigeon: 'Pigeon',
  BirdSpecies.dove: 'Dove',
  BirdSpecies.other: 'Other',
};

const _$BirdAgeGroupEnumMap = {
  BirdAgeGroup.juvenile: 'Juvenile',
  BirdAgeGroup.subadult: 'Subadult',
  BirdAgeGroup.adult: 'Adult',
  BirdAgeGroup.senior: 'Senior',
  BirdAgeGroup.other: 'Other',
};

const _$PetServiceTypeEnumMap = {
  PetServiceType.grooming: 'Grooming',
  PetServiceType.boarding: 'Boarding',
  PetServiceType.walking: 'Walking',
  PetServiceType.training: 'Training',
  PetServiceType.veterinary: 'Veterinary',
  PetServiceType.petSitting: 'PetSitting',
  PetServiceType.other: 'Other',
};
