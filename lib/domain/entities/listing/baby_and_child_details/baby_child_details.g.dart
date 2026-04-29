// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'baby_child_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BabyChildDetails _$BabyChildDetailsFromJson(Map<String, dynamic> json) =>
    _BabyChildDetails(
      listingId: json['listingId'] as String?,
      ageRange: $enumDecodeNullable(_$KidsAgeRangeEnumMap, json['ageRange']),
      condition: $enumDecodeNullable(
        _$BabyChildConditionEnumMap,
        json['condition'],
      ),
      strollerSeatType: $enumDecodeNullable(
        _$StrollerSeatTypeEnumMap,
        json['strollerSeatType'],
      ),
      gender: $enumDecodeNullable(_$KidGenderEnumMap, json['gender']),
      cribFurnitureType: $enumDecodeNullable(
        _$CribFurnitureTypeEnumMap,
        json['cribFurnitureType'],
      ),
      feedingType: $enumDecodeNullable(
        _$FeedingTypeEnumMap,
        json['feedingType'],
      ),
    );

Map<String, dynamic> _$BabyChildDetailsToJson(
  _BabyChildDetails instance,
) => <String, dynamic>{
  'listingId': instance.listingId,
  'ageRange': _$KidsAgeRangeEnumMap[instance.ageRange],
  'condition': _$BabyChildConditionEnumMap[instance.condition],
  'strollerSeatType': _$StrollerSeatTypeEnumMap[instance.strollerSeatType],
  'gender': _$KidGenderEnumMap[instance.gender],
  'cribFurnitureType': _$CribFurnitureTypeEnumMap[instance.cribFurnitureType],
  'feedingType': _$FeedingTypeEnumMap[instance.feedingType],
};

const _$KidsAgeRangeEnumMap = {
  KidsAgeRange.lessThan2Years: 'LessThan2Years',
  KidsAgeRange.twoTo5Years: 'TwoTo5Years',
  KidsAgeRange.fiveTo12Years: 'FiveTo12Years',
};

const _$BabyChildConditionEnumMap = {
  BabyChildCondition.new_: 'New',
  BabyChildCondition.used: 'Used',
};

const _$StrollerSeatTypeEnumMap = {
  StrollerSeatType.carSeats: 'CarSeats',
  StrollerSeatType.highChairs: 'HighChairs',
  StrollerSeatType.strollers: 'Strollers',
  StrollerSeatType.others: 'Others',
};

const _$KidGenderEnumMap = {KidGender.boy: 'Boy', KidGender.girl: 'Girl'};

const _$CribFurnitureTypeEnumMap = {
  CribFurnitureType.beddings: 'Beddings',
  CribFurnitureType.beds: 'Beds',
  CribFurnitureType.closets: 'Closets',
  CribFurnitureType.decoration: 'Decoration',
  CribFurnitureType.mattresses: 'Mattresses',
  CribFurnitureType.otherFurniture: 'OtherFurniture',
};

const _$FeedingTypeEnumMap = {
  FeedingType.breastfeeding: 'Breastfeeding',
  FeedingType.kitchenware: 'Kitchenware',
  FeedingType.sterilizers: 'Sterilizers',
  FeedingType.otherItems: 'OtherItems',
};
