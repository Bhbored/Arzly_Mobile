import 'package:arzly/core/enums/listing_owned/real_estate/apartment_feature.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/bedrooms.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/chalet_feature.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/chalet_type.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/commercial_feature.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/commercial_type.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/floor_level.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/furnished_status.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/land_type.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/ownership_type.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/property_age.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/property_condition.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/property_listing_type.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/property_type.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/room_feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'real_estate_details.freezed.dart';
part 'real_estate_details.g.dart';

@freezed
sealed class RealEstateDetails with _$RealEstateDetails {
  const factory RealEstateDetails({
    String? listingId,
    PropertyListingType? listingType,
    String? referenceId,
    PropertyType? propertyType,
    OwnershipType? ownership,
    Bedrooms? bedrooms,
    int? bathrooms,
    double? size,
    FurnishedStatus? furnished,
    PropertyCondition? condition,
    FloorLevel? floor,
    List<ApartmentFeature>? features,
    PropertyAge? propertyAge,
    CommercialType? commercialType,
    bool? equipped,
    List<CommercialFeature>? commercialFeatures,
    LandType? landType,
    ChaletType? chaletType,
    List<ChaletFeature>? chaletFeatures,
    bool? roomFurnished,
    List<RoomFeature>? roomFeatures,
  }) = _RealEstateDetails;

  factory RealEstateDetails.fromJson(Map<String, dynamic> json) =>
      _$RealEstateDetailsFromJson(json);
}
