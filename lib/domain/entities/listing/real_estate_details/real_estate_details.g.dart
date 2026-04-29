// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'real_estate_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RealEstateDetails _$RealEstateDetailsFromJson(
  Map<String, dynamic> json,
) => _RealEstateDetails(
  listingId: json['listingId'] as String?,
  listingType: $enumDecodeNullable(
    _$PropertyListingTypeEnumMap,
    json['listingType'],
  ),
  referenceId: json['referenceId'] as String?,
  propertyType: $enumDecodeNullable(
    _$PropertyTypeEnumMap,
    json['propertyType'],
  ),
  ownership: $enumDecodeNullable(_$OwnershipTypeEnumMap, json['ownership']),
  bedrooms: $enumDecodeNullable(_$BedroomsEnumMap, json['bedrooms']),
  bathrooms: (json['bathrooms'] as num?)?.toInt(),
  size: (json['size'] as num?)?.toDouble(),
  furnished: $enumDecodeNullable(_$FurnishedStatusEnumMap, json['furnished']),
  condition: $enumDecodeNullable(_$PropertyConditionEnumMap, json['condition']),
  floor: $enumDecodeNullable(_$FloorLevelEnumMap, json['floor']),
  features: (json['features'] as List<dynamic>?)
      ?.map((e) => $enumDecode(_$ApartmentFeatureEnumMap, e))
      .toList(),
  propertyAge: $enumDecodeNullable(_$PropertyAgeEnumMap, json['propertyAge']),
  commercialType: $enumDecodeNullable(
    _$CommercialTypeEnumMap,
    json['commercialType'],
  ),
  equipped: json['equipped'] as bool?,
  commercialFeatures: (json['commercialFeatures'] as List<dynamic>?)
      ?.map((e) => $enumDecode(_$CommercialFeatureEnumMap, e))
      .toList(),
  landType: $enumDecodeNullable(_$LandTypeEnumMap, json['landType']),
  chaletType: $enumDecodeNullable(_$ChaletTypeEnumMap, json['chaletType']),
  chaletFeatures: (json['chaletFeatures'] as List<dynamic>?)
      ?.map((e) => $enumDecode(_$ChaletFeatureEnumMap, e))
      .toList(),
  roomFurnished: json['roomFurnished'] as bool?,
  roomFeatures: (json['roomFeatures'] as List<dynamic>?)
      ?.map((e) => $enumDecode(_$RoomFeatureEnumMap, e))
      .toList(),
);

Map<String, dynamic> _$RealEstateDetailsToJson(_RealEstateDetails instance) =>
    <String, dynamic>{
      'listingId': instance.listingId,
      'listingType': _$PropertyListingTypeEnumMap[instance.listingType],
      'referenceId': instance.referenceId,
      'propertyType': _$PropertyTypeEnumMap[instance.propertyType],
      'ownership': _$OwnershipTypeEnumMap[instance.ownership],
      'bedrooms': _$BedroomsEnumMap[instance.bedrooms],
      'bathrooms': instance.bathrooms,
      'size': instance.size,
      'furnished': _$FurnishedStatusEnumMap[instance.furnished],
      'condition': _$PropertyConditionEnumMap[instance.condition],
      'floor': _$FloorLevelEnumMap[instance.floor],
      'features': instance.features
          ?.map((e) => _$ApartmentFeatureEnumMap[e]!)
          .toList(),
      'propertyAge': _$PropertyAgeEnumMap[instance.propertyAge],
      'commercialType': _$CommercialTypeEnumMap[instance.commercialType],
      'equipped': instance.equipped,
      'commercialFeatures': instance.commercialFeatures
          ?.map((e) => _$CommercialFeatureEnumMap[e]!)
          .toList(),
      'landType': _$LandTypeEnumMap[instance.landType],
      'chaletType': _$ChaletTypeEnumMap[instance.chaletType],
      'chaletFeatures': instance.chaletFeatures
          ?.map((e) => _$ChaletFeatureEnumMap[e]!)
          .toList(),
      'roomFurnished': instance.roomFurnished,
      'roomFeatures': instance.roomFeatures
          ?.map((e) => _$RoomFeatureEnumMap[e]!)
          .toList(),
    };

const _$PropertyListingTypeEnumMap = {
  PropertyListingType.forSale: 'ForSale',
  PropertyListingType.forRent: 'ForRent',
};

const _$PropertyTypeEnumMap = {
  PropertyType.studio: 'Studio',
  PropertyType.apartment: 'Apartment',
  PropertyType.penthouse: 'Penthouse',
  PropertyType.duplex: 'Duplex',
  PropertyType.triplex: 'Triplex',
  PropertyType.villa: 'Villa',
  PropertyType.townhouse: 'Townhouse',
  PropertyType.loft: 'Loft',
  PropertyType.other: 'Other',
};

const _$OwnershipTypeEnumMap = {
  OwnershipType.byOwner: 'ByOwner',
  OwnershipType.byCompany: 'ByCompany',
  OwnershipType.other: 'Other',
};

const _$BedroomsEnumMap = {
  Bedrooms.studio: 'Studio',
  Bedrooms.one: 'One',
  Bedrooms.two: 'Two',
  Bedrooms.three: 'Three',
  Bedrooms.four: 'Four',
  Bedrooms.five: 'Five',
  Bedrooms.six: 'Six',
  Bedrooms.seven: 'Seven',
  Bedrooms.eight: 'Eight',
  Bedrooms.nine: 'Nine',
  Bedrooms.ten: 'Ten',
  Bedrooms.eleven: 'Eleven',
  Bedrooms.twelve: 'Twelve',
  Bedrooms.thirteen: 'Thirteen',
  Bedrooms.suggest: 'Suggest',
};

const _$FurnishedStatusEnumMap = {
  FurnishedStatus.appliancesOnly: 'AppliancesOnly',
  FurnishedStatus.fullyFurnished: 'FullyFurnished',
  FurnishedStatus.semiFurnished: 'SemiFurnished',
  FurnishedStatus.unfurnished: 'Unfurnished',
};

const _$PropertyConditionEnumMap = {
  PropertyCondition.readyToMoveIn: 'ReadyToMoveIn',
  PropertyCondition.underConstruction: 'UnderConstruction',
};

const _$FloorLevelEnumMap = {
  FloorLevel.basement: 'Basement',
  FloorLevel.groundFloor: 'GroundFloor',
  FloorLevel.first: 'First',
  FloorLevel.second: 'Second',
  FloorLevel.third: 'Third',
  FloorLevel.fourth: 'Fourth',
  FloorLevel.fifth: 'Fifth',
  FloorLevel.sixth: 'Sixth',
  FloorLevel.seventh: 'Seventh',
  FloorLevel.eighth: 'Eighth',
  FloorLevel.ninth: 'Ninth',
  FloorLevel.tenth: 'Tenth',
  FloorLevel.tenPlus: 'TenPlus',
  FloorLevel.highestLevel: 'HighestLevel',
};

const _$ApartmentFeatureEnumMap = {
  ApartmentFeature.electricity24x7: 'Electricity24x7',
  ApartmentFeature.balcony: 'Balcony',
  ApartmentFeature.builtInWardrobes: 'BuiltInWardrobes',
  ApartmentFeature.centralAC: 'CentralAC',
  ApartmentFeature.coveredParking: 'CoveredParking',
  ApartmentFeature.driverRoom: 'DriverRoom',
  ApartmentFeature.elevator: 'Elevator',
  ApartmentFeature.garden: 'Garden',
  ApartmentFeature.gym: 'Gym',
  ApartmentFeature.intercom: 'Intercom',
  ApartmentFeature.kitchenAppliances: 'KitchenAppliances',
  ApartmentFeature.laundryRoom: 'LaundryRoom',
  ApartmentFeature.maidRoom: 'MaidRoom',
  ApartmentFeature.petsAllowed: 'PetsAllowed',
  ApartmentFeature.pool: 'Pool',
  ApartmentFeature.rooftop: 'Rooftop',
  ApartmentFeature.security: 'Security',
  ApartmentFeature.storage: 'Storage',
  ApartmentFeature.viewOfCity: 'ViewOfCity',
  ApartmentFeature.viewOfSea: 'ViewOfSea',
  ApartmentFeature.walkInCloset: 'WalkInCloset',
};

const _$PropertyAgeEnumMap = {
  PropertyAge.oneToFiveYears: 'OneToFiveYears',
  PropertyAge.fiveToTenYears: 'FiveToTenYears',
  PropertyAge.tenPlusYears: 'TenPlusYears',
};

const _$CommercialTypeEnumMap = {
  CommercialType.garage: 'Garage',
  CommercialType.office: 'Office',
  CommercialType.shop: 'Shop',
  CommercialType.warehouse: 'Warehouse',
  CommercialType.workshop: 'Workshop',
  CommercialType.showroom: 'Showroom',
  CommercialType.other: 'Other',
};

const _$CommercialFeatureEnumMap = {
  CommercialFeature.airConditioning: 'AirConditioning',
  CommercialFeature.coveredParking: 'CoveredParking',
  CommercialFeature.security: 'Security',
  CommercialFeature.storage: 'Storage',
  CommercialFeature.elevator: 'Elevator',
  CommercialFeature.loadingDock: 'LoadingDock',
  CommercialFeature.receptionArea: 'ReceptionArea',
  CommercialFeature.pantry: 'Pantry',
};

const _$LandTypeEnumMap = {
  LandType.agricultural: 'Agricultural',
  LandType.industrial: 'Industrial',
  LandType.residential: 'Residential',
  LandType.other: 'Other',
};

const _$ChaletTypeEnumMap = {
  ChaletType.mountainLocation: 'MountainLocation',
  ChaletType.seaLocation: 'SeaLocation',
  ChaletType.other: 'Other',
};

const _$ChaletFeatureEnumMap = {
  ChaletFeature.balcony: 'Balcony',
  ChaletFeature.bbqArea: 'BBQArea',
  ChaletFeature.beachAccess: 'BeachAccess',
  ChaletFeature.fireplace: 'Fireplace',
  ChaletFeature.garden: 'Garden',
  ChaletFeature.jacuzzi: 'Jacuzzi',
  ChaletFeature.mountainView: 'MountainView',
  ChaletFeature.outdoorSeating: 'OutdoorSeating',
  ChaletFeature.pool: 'Pool',
  ChaletFeature.privateEntrance: 'PrivateEntrance',
  ChaletFeature.seaView: 'SeaView',
  ChaletFeature.skiAccess: 'SkiAccess',
  ChaletFeature.terrace: 'Terrace',
  ChaletFeature.woodenCabin: 'WoodenCabin',
};

const _$RoomFeatureEnumMap = {
  RoomFeature.airConditioning: 'AirConditioning',
  RoomFeature.balcony: 'Balcony',
  RoomFeature.bathroomAttached: 'BathroomAttached',
  RoomFeature.furnished: 'Furnished',
  RoomFeature.kitchenAccess: 'KitchenAccess',
  RoomFeature.parking: 'Parking',
  RoomFeature.wiFi: 'WiFi',
  RoomFeature.billsIncluded: 'BillsIncluded',
};
