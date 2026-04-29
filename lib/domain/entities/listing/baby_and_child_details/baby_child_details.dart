import 'package:arzly/core/enums/listing_owned/baby_and_child/baby_child_condition.dart';
import 'package:arzly/core/enums/listing_owned/baby_and_child/crib_furniture_type.dart';
import 'package:arzly/core/enums/listing_owned/baby_and_child/feeding_type.dart';
import 'package:arzly/core/enums/listing_owned/baby_and_child/kid_gender.dart';
import 'package:arzly/core/enums/listing_owned/baby_and_child/kids_age_range.dart';
import 'package:arzly/core/enums/listing_owned/baby_and_child/stroller_seat_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'baby_child_details.freezed.dart';
part 'baby_child_details.g.dart';

@freezed
sealed class BabyChildDetails with _$BabyChildDetails {
  const factory BabyChildDetails({
    String? listingId,
    KidsAgeRange? ageRange,
    BabyChildCondition? condition,
    StrollerSeatType? strollerSeatType,
    KidGender? gender,
    CribFurnitureType? cribFurnitureType,
    FeedingType? feedingType,
  }) = _BabyChildDetails;

  factory BabyChildDetails.fromJson(Map<String, dynamic> json) =>
      _$BabyChildDetailsFromJson(json);
}
