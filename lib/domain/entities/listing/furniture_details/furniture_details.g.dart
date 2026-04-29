// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'furniture_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FurnitureDetails _$FurnitureDetailsFromJson(Map<String, dynamic> json) =>
    _FurnitureDetails(
      listingId: json['listingId'] as String?,
      livingRoomType: $enumDecodeNullable(
        _$LivingRoomTypeEnumMap,
        json['livingRoomType'],
      ),
      condition: $enumDecodeNullable(
        _$FurnitureConditionEnumMap,
        json['condition'],
      ),
      bedroomType: $enumDecodeNullable(
        _$BedroomTypeEnumMap,
        json['bedroomType'],
      ),
      diningRoomType: $enumDecodeNullable(
        _$DiningRoomTypeEnumMap,
        json['diningRoomType'],
      ),
      kitchenwareType: $enumDecodeNullable(
        _$KitchenwareTypeEnumMap,
        json['kitchenwareType'],
      ),
      bathroomType: $enumDecodeNullable(
        _$BathroomTypeEnumMap,
        json['bathroomType'],
      ),
      homeDecorType: $enumDecodeNullable(
        _$HomeDecorTypeEnumMap,
        json['homeDecorType'],
      ),
      gardenType: $enumDecodeNullable(_$GardenTypeEnumMap, json['gardenType']),
    );

Map<String, dynamic> _$FurnitureDetailsToJson(_FurnitureDetails instance) =>
    <String, dynamic>{
      'listingId': instance.listingId,
      'livingRoomType': _$LivingRoomTypeEnumMap[instance.livingRoomType],
      'condition': _$FurnitureConditionEnumMap[instance.condition],
      'bedroomType': _$BedroomTypeEnumMap[instance.bedroomType],
      'diningRoomType': _$DiningRoomTypeEnumMap[instance.diningRoomType],
      'kitchenwareType': _$KitchenwareTypeEnumMap[instance.kitchenwareType],
      'bathroomType': _$BathroomTypeEnumMap[instance.bathroomType],
      'homeDecorType': _$HomeDecorTypeEnumMap[instance.homeDecorType],
      'gardenType': _$GardenTypeEnumMap[instance.gardenType],
    };

const _$LivingRoomTypeEnumMap = {
  LivingRoomType.bookshelvesAndTVCabinets: 'BookshelvesAndTVCabinets',
  LivingRoomType.chairsAndSofas: 'ChairsAndSofas',
  LivingRoomType.fullLivingRoom: 'FullLivingRoom',
  LivingRoomType.tables: 'Tables',
  LivingRoomType.others: 'Others',
};

const _$FurnitureConditionEnumMap = {
  FurnitureCondition.new_: 'New',
  FurnitureCondition.used: 'Used',
};

const _$BedroomTypeEnumMap = {
  BedroomType.beddingSets: 'BeddingSets',
  BedroomType.beds: 'Beds',
  BedroomType.closets: 'Closets',
  BedroomType.fullBedrooms: 'FullBedrooms',
  BedroomType.mattresses: 'Mattresses',
  BedroomType.nightstands: 'Nightstands',
  BedroomType.pillows: 'Pillows',
  BedroomType.others: 'Others',
};

const _$DiningRoomTypeEnumMap = {
  DiningRoomType.diningTables: 'DiningTables',
  DiningRoomType.diningChairs: 'DiningChairs',
  DiningRoomType.fullDiningRoom: 'FullDiningRoom',
  DiningRoomType.sideboards: 'Sideboards',
  DiningRoomType.others: 'Others',
};

const _$KitchenwareTypeEnumMap = {
  KitchenwareType.cookingTools: 'CookingTools',
  KitchenwareType.cutlery: 'Cutlery',
  KitchenwareType.fullKitchen: 'FullKitchen',
  KitchenwareType.mugsAndCups: 'MugsAndCups',
  KitchenwareType.plates: 'Plates',
  KitchenwareType.others: 'Others',
};

const _$BathroomTypeEnumMap = {
  BathroomType.mirrorsAndShelves: 'MirrorsAndShelves',
  BathroomType.showerRoomsAndTubs: 'ShowerRoomsAndTubs',
  BathroomType.sinks: 'Sinks',
  BathroomType.toiletSeats: 'ToiletSeats',
  BathroomType.waterMixerAndShowerHeads: 'WaterMixerAndShowerHeads',
  BathroomType.others: 'Others',
};

const _$HomeDecorTypeEnumMap = {
  HomeDecorType.carpets: 'Carpets',
  HomeDecorType.doorsAndWindows: 'DoorsAndWindows',
  HomeDecorType.lightingTools: 'LightingTools',
  HomeDecorType.mirrors: 'Mirrors',
  HomeDecorType.paintings: 'Paintings',
  HomeDecorType.curtains: 'Curtains',
  HomeDecorType.others: 'Others',
};

const _$GardenTypeEnumMap = {
  GardenType.gardenDecoration: 'GardenDecoration',
  GardenType.gardenFurniture: 'GardenFurniture',
  GardenType.gardenGrill: 'GardenGrill',
  GardenType.gardenUmbrella: 'GardenUmbrella',
  GardenType.gardeningTools: 'GardeningTools',
  GardenType.plantsAndFlowers: 'PlantsAndFlowers',
  GardenType.others: 'Others',
};
