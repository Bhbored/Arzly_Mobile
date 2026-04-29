import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/accessory_brand.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/band_color.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/band_material.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/membership_type.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/mobile_accessory_type.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/mobile_operator.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/phone_brand.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/phone_color.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/phone_condition.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/phone_storage.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/watch_brand.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/watch_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'phones_details.freezed.dart';
part 'phones_details.g.dart';

@freezed
sealed class PhonesDetails with _$PhonesDetails {
  const factory PhonesDetails({
    String? listingId,
    PhoneBrand? phoneBrand,
    PhoneCondition? phoneCondition,
    PhoneStorage? storage,
    PhoneColor? color,
    AccessoryBrand? accessoryBrand,
    MobileAccessoryType? accessoryItemType,
    MobileOperator? operator,
    MembershipType? membershipType,
    WatchBrand? watchBrand,
    WatchStorage? watchStorage,
    BandMaterial? bandMaterial,
    BandColor? bandColor,
  }) = _PhonesDetails;

  factory PhonesDetails.fromJson(Map<String, dynamic> json) =>
      _$PhonesDetailsFromJson(json);
}
