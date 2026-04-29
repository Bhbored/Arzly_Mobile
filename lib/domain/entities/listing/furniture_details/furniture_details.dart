import 'package:arzly/core/enums/listing_owned/home_and_living/bathroom_type.dart';
import 'package:arzly/core/enums/listing_owned/home_and_living/bedroom_type.dart';
import 'package:arzly/core/enums/listing_owned/home_and_living/dining_room_type.dart';
import 'package:arzly/core/enums/listing_owned/home_and_living/furniture_condition.dart';
import 'package:arzly/core/enums/listing_owned/home_and_living/garden_type.dart';
import 'package:arzly/core/enums/listing_owned/home_and_living/home_decor_type.dart';
import 'package:arzly/core/enums/listing_owned/home_and_living/kitchenware_type.dart';
import 'package:arzly/core/enums/listing_owned/home_and_living/living_room_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'furniture_details.freezed.dart';
part 'furniture_details.g.dart';

@freezed
sealed class FurnitureDetails with _$FurnitureDetails {
  const factory FurnitureDetails({
    String? listingId,
    LivingRoomType? livingRoomType,
    FurnitureCondition? condition,
    BedroomType? bedroomType,
    DiningRoomType? diningRoomType,
    KitchenwareType? kitchenwareType,
    BathroomType? bathroomType,
    HomeDecorType? homeDecorType,
    GardenType? gardenType,
  }) = _FurnitureDetails;

  factory FurnitureDetails.fromJson(Map<String, dynamic> json) =>
      _$FurnitureDetailsFromJson(json);
}
