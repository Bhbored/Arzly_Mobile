import 'package:arzly/core/enums/listing_owned/sport_and_outdoors/ball_sport_type.dart';
import 'package:arzly/core/enums/listing_owned/sport_and_outdoors/bicycle_power_type.dart';
import 'package:arzly/core/enums/listing_owned/sport_and_outdoors/bicycle_type.dart';
import 'package:arzly/core/enums/listing_owned/sport_and_outdoors/game_room_type.dart';
import 'package:arzly/core/enums/listing_owned/sport_and_outdoors/gym_type.dart';
import 'package:arzly/core/enums/listing_owned/sport_and_outdoors/outdoor_type.dart';
import 'package:arzly/core/enums/listing_owned/sport_and_outdoors/racket_sport_type.dart';
import 'package:arzly/core/enums/listing_owned/sport_and_outdoors/sports_condition.dart';
import 'package:arzly/core/enums/listing_owned/sport_and_outdoors/supplement_brand.dart';
import 'package:arzly/core/enums/listing_owned/sport_and_outdoors/supplement_type.dart';
import 'package:arzly/core/enums/listing_owned/sport_and_outdoors/water_sport_type.dart';
import 'package:arzly/core/enums/listing_owned/sport_and_outdoors/winter_sport_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sports_details.freezed.dart';
part 'sports_details.g.dart';

@freezed
sealed class SportsDetails with _$SportsDetails {
  const factory SportsDetails({
    String? listingId,
    BicycleType? bicycleType,
    SportsCondition? condition,
    BicyclePowerType? bicyclePowerType,
    OutdoorType? outdoorType,
    GymType? gymType,
    BallSportType? ballSportType,
    SupplementType? supplementType,
    SupplementBrand? supplementBrand,
    GameRoomType? gameRoomType,
    WinterSportType? winterSportType,
    WaterSportType? waterSportType,
    RacketSportType? racketSportType,
  }) = _SportsDetails;

  factory SportsDetails.fromJson(Map<String, dynamic> json) =>
      _$SportsDetailsFromJson(json);
}
