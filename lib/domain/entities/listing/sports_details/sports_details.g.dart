// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sports_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SportsDetails _$SportsDetailsFromJson(
  Map<String, dynamic> json,
) => _SportsDetails(
  listingId: json['listingId'] as String?,
  bicycleType: $enumDecodeNullable(_$BicycleTypeEnumMap, json['bicycleType']),
  condition: $enumDecodeNullable(_$SportsConditionEnumMap, json['condition']),
  bicyclePowerType: $enumDecodeNullable(
    _$BicyclePowerTypeEnumMap,
    json['bicyclePowerType'],
  ),
  outdoorType: $enumDecodeNullable(_$OutdoorTypeEnumMap, json['outdoorType']),
  gymType: $enumDecodeNullable(_$GymTypeEnumMap, json['gymType']),
  ballSportType: $enumDecodeNullable(
    _$BallSportTypeEnumMap,
    json['ballSportType'],
  ),
  supplementType: $enumDecodeNullable(
    _$SupplementTypeEnumMap,
    json['supplementType'],
  ),
  supplementBrand: $enumDecodeNullable(
    _$SupplementBrandEnumMap,
    json['supplementBrand'],
  ),
  gameRoomType: $enumDecodeNullable(
    _$GameRoomTypeEnumMap,
    json['gameRoomType'],
  ),
  winterSportType: $enumDecodeNullable(
    _$WinterSportTypeEnumMap,
    json['winterSportType'],
  ),
  waterSportType: $enumDecodeNullable(
    _$WaterSportTypeEnumMap,
    json['waterSportType'],
  ),
  racketSportType: $enumDecodeNullable(
    _$RacketSportTypeEnumMap,
    json['racketSportType'],
  ),
);

Map<String, dynamic> _$SportsDetailsToJson(_SportsDetails instance) =>
    <String, dynamic>{
      'listingId': instance.listingId,
      'bicycleType': _$BicycleTypeEnumMap[instance.bicycleType],
      'condition': _$SportsConditionEnumMap[instance.condition],
      'bicyclePowerType': _$BicyclePowerTypeEnumMap[instance.bicyclePowerType],
      'outdoorType': _$OutdoorTypeEnumMap[instance.outdoorType],
      'gymType': _$GymTypeEnumMap[instance.gymType],
      'ballSportType': _$BallSportTypeEnumMap[instance.ballSportType],
      'supplementType': _$SupplementTypeEnumMap[instance.supplementType],
      'supplementBrand': _$SupplementBrandEnumMap[instance.supplementBrand],
      'gameRoomType': _$GameRoomTypeEnumMap[instance.gameRoomType],
      'winterSportType': _$WinterSportTypeEnumMap[instance.winterSportType],
      'waterSportType': _$WaterSportTypeEnumMap[instance.waterSportType],
      'racketSportType': _$RacketSportTypeEnumMap[instance.racketSportType],
    };

const _$BicycleTypeEnumMap = {
  BicycleType.bicycleAccessoriesAndParts: 'BicycleAccessoriesAndParts',
  BicycleType.bicycles: 'Bicycles',
  BicycleType.other: 'Other',
};

const _$SportsConditionEnumMap = {
  SportsCondition.new_: 'New',
  SportsCondition.used: 'Used',
};

const _$BicyclePowerTypeEnumMap = {
  BicyclePowerType.manual: 'Manual',
  BicyclePowerType.electric: 'Electric',
  BicyclePowerType.hybrid: 'Hybrid',
};

const _$OutdoorTypeEnumMap = {
  OutdoorType.camping: 'Camping',
  OutdoorType.fishingEquipment: 'FishingEquipment',
  OutdoorType.outdoorEquipment: 'OutdoorEquipment',
  OutdoorType.other: 'Other',
};

const _$GymTypeEnumMap = {
  GymType.bodybuilding: 'Bodybuilding',
  GymType.boxingAndMartialArts: 'BoxingAndMartialArts',
  GymType.treadmillsAndCardioMachines: 'TreadmillsAndCardioMachines',
  GymType.yogaAndWellbeing: 'YogaAndWellbeing',
  GymType.other: 'Other',
};

const _$BallSportTypeEnumMap = {
  BallSportType.football: 'Football',
  BallSportType.basketball: 'Basketball',
  BallSportType.volleyball: 'Volleyball',
  BallSportType.handball: 'Handball',
  BallSportType.rugby: 'Rugby',
  BallSportType.baseball: 'Baseball',
  BallSportType.cricket: 'Cricket',
  BallSportType.golf: 'Golf',
  BallSportType.other: 'Other',
};

const _$SupplementTypeEnumMap = {
  SupplementType.bCAA: 'BCAA',
  SupplementType.creatine: 'Creatine',
  SupplementType.fatBurner: 'FatBurner',
  SupplementType.proteinPowder: 'ProteinPowder',
  SupplementType.vitaminsAndMinerals: 'VitaminsAndMinerals',
  SupplementType.other: 'Other',
};

const _$SupplementBrandEnumMap = {
  SupplementBrand.gNC: 'GNC',
  SupplementBrand.armal: 'Armal',
  SupplementBrand.optimumNutrition: 'OptimumNutrition',
  SupplementBrand.bPI: 'BPI',
  SupplementBrand.muscleTech: 'MuscleTech',
  SupplementBrand.dymatize: 'Dymatize',
  SupplementBrand.cellucor: 'Cellucor',
  SupplementBrand.universalNutrition: 'UniversalNutrition',
  SupplementBrand.myProtein: 'MyProtein',
  SupplementBrand.isopure: 'Isopure',
  SupplementBrand.other: 'Other',
};

const _$GameRoomTypeEnumMap = {
  GameRoomType.babyfoot: 'Babyfoot',
  GameRoomType.bowling: 'Bowling',
  GameRoomType.darts: 'Darts',
  GameRoomType.poolBilliard: 'PoolBilliard',
  GameRoomType.snooker: 'Snooker',
  GameRoomType.airHockey: 'AirHockey',
  GameRoomType.other: 'Other',
};

const _$WinterSportTypeEnumMap = {
  WinterSportType.skiing: 'Skiing',
  WinterSportType.snowboarding: 'Snowboarding',
  WinterSportType.other: 'Other',
};

const _$WaterSportTypeEnumMap = {
  WaterSportType.sailing: 'Sailing',
  WaterSportType.snorkellingAndDiving: 'SnorkellingAndDiving',
  WaterSportType.surfBoarding: 'SurfBoarding',
  WaterSportType.other: 'Other',
};

const _$RacketSportTypeEnumMap = {
  RacketSportType.padel: 'Padel',
  RacketSportType.badminton: 'Badminton',
  RacketSportType.pingPong: 'PingPong',
  RacketSportType.squash: 'Squash',
  RacketSportType.tennis: 'Tennis',
  RacketSportType.other: 'Other',
};
