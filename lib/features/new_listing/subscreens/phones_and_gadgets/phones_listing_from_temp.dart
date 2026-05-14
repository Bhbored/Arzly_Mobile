import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/accessory_brand.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/membership_type.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/mobile_accessory_type.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/mobile_operator.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/phone_brand.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/phone_color.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/band_color.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/band_material.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/phone_condition.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/watch_brand.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/watch_storage.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/phone_storage.dart';
import 'package:arzly/data/providers/new_listing/temp_listing_draft/temp_listing_draft_holder.dart';
import 'package:arzly/data/providers/new_listing/temp_phones_gadgets_draft/temp_phones_gadgets_draft_holder.dart';
import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/listing/listing.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Listing buildPhonesListingFromTempDrafts(
  WidgetRef ref, {
  required Category category,
  required SubCategory subcategory,
}) {
  final listing = ref.read(tempListingDraftHolderProvider);
  final details = ref.read(tempPhonesGadgetsDraftHolderProvider);
  return listing.copyWith(
    categoryId: category.id,
    subcategoryId: subcategory.id,
    listingDetails: details,
  );
}

String? suggestedMobileNumbersTitle(WidgetRef ref) {
  final d = ref.read(tempPhonesGadgetsDraftHolderProvider);
  final parts = <String>[];
  if (d.operator != null) {
    parts.add(d.operator!.label);
  }
  if (d.membershipType != null) {
    parts.add(d.membershipType!.label);
  }
  if (parts.isEmpty) return null;
  return parts.join(' · ');
}

String? suggestedMobilePhonesTitle(WidgetRef ref) {
  final d = ref.read(tempPhonesGadgetsDraftHolderProvider);
  final parts = <String>[];
  if (d.phoneBrand != null) {
    parts.add(d.phoneBrand!.label);
  }
  if (d.storage != null) {
    parts.add(d.storage!.label);
  }
  if (d.color != null) {
    parts.add(d.color!.label);
  }
  if (parts.isEmpty) return null;
  return parts.join(' · ');
}

String? suggestedMobileAccessoriesTitle(WidgetRef ref) {
  final d = ref.read(tempPhonesGadgetsDraftHolderProvider);
  final parts = <String>[];
  if (d.accessoryBrand != null) {
    parts.add(d.accessoryBrand!.label);
  }
  if (d.accessoryItemType != null) {
    parts.add(d.accessoryItemType!.label);
  }
  if (d.phoneCondition != null) {
    parts.add(d.phoneCondition!.label);
  }
  if (parts.isEmpty) return null;
  return parts.join(' · ');
}

String? suggestedSmartWatchesTitle(WidgetRef ref) {
  final d = ref.read(tempPhonesGadgetsDraftHolderProvider);
  final parts = <String>[];
  if (d.watchBrand != null) {
    parts.add(d.watchBrand!.label);
  }
  if (d.watchStorage != null) {
    parts.add(d.watchStorage!.label);
  }
  if (d.bandMaterial != null) {
    parts.add(d.bandMaterial!.label);
  }
  if (d.bandColor != null) {
    parts.add(d.bandColor!.label);
  }
  if (parts.isEmpty) return null;
  return parts.join(' · ');
}
