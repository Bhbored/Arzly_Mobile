import 'package:arzly/core/enums/listing_owned/style_and_wellness/cosmetic_type.dart';
import 'package:arzly/core/enums/listing_owned/style_and_wellness/fashion_condition.dart';
import 'package:arzly/core/enums/listing_owned/style_and_wellness/jewelry_material.dart';
import 'package:arzly/core/enums/listing_owned/style_and_wellness/jewelry_type.dart';
import 'package:arzly/core/enums/listing_owned/style_and_wellness/mens_accessory_type.dart';
import 'package:arzly/core/enums/listing_owned/style_and_wellness/mens_clothing_type.dart';
import 'package:arzly/core/enums/listing_owned/style_and_wellness/watch_gender.dart';
import 'package:arzly/core/enums/listing_owned/style_and_wellness/womens_accessory_type.dart';
import 'package:arzly/core/enums/listing_owned/style_and_wellness/womens_clothing_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fashion_details.freezed.dart';
part 'fashion_details.g.dart';

@freezed
sealed class FashionDetails with _$FashionDetails {
  const factory FashionDetails({
    String? listingId,
    MensClothingType? mensClothingType,
    FashionCondition? condition,
    MensAccessoryType? mensAccessoryType,
    WomensClothingType? womensClothingType,
    WomensAccessoryType? womensAccessoryType,
    CosmeticType? cosmeticType,
    JewelryType? jewelryType,
    JewelryMaterial? jewelryMaterial,
    WatchGender? watchGender,
  }) = _FashionDetails;

  factory FashionDetails.fromJson(Map<String, dynamic> json) =>
      _$FashionDetailsFromJson(json);
}
