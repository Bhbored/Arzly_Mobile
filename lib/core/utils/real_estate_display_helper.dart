import 'package:arzly/core/enums/listing_owned/real_estate/bedrooms.dart';

class RealEstateDisplayHelper {
  const RealEstateDisplayHelper._();

  static int bedroomsToCount(Bedrooms? bedrooms) => switch (bedrooms) {
    Bedrooms.studio => 0,
    Bedrooms.one => 1,
    Bedrooms.two => 2,
    Bedrooms.three => 3,
    Bedrooms.four => 4,
    Bedrooms.five => 5,
    Bedrooms.six => 6,
    Bedrooms.seven => 7,
    Bedrooms.eight => 8,
    Bedrooms.nine => 9,
    Bedrooms.ten => 10,
    Bedrooms.eleven => 11,
    Bedrooms.twelve => 12,
    Bedrooms.thirteen => 13,
    Bedrooms.suggest || null => 1,
  };

  static int areaInSquareMeters(double? size) => (size ?? 1).ceil();
}
