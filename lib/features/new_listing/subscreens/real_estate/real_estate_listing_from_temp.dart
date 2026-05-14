import 'package:arzly/core/enums/listing_owned/real_estate/bedrooms.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/chalet_type.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/commercial_type.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/furnished_status.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/land_type.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/property_type.dart';
import 'package:arzly/data/providers/new_listing/temp_listing_draft/temp_listing_draft_holder.dart';
import 'package:arzly/data/providers/new_listing/temp_real_estate_draft/temp_real_estate_draft_holder.dart';
import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/listing/listing.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Listing buildRealEstateListingFromTempDrafts(
  WidgetRef ref, {
  required Category category,
  required SubCategory subcategory,
}) {
  final listing = ref.read(tempListingDraftHolderProvider);
  final details = ref.read(tempRealEstateDraftHolderProvider);
  return listing.copyWith(
    categoryId: category.id,
    subcategoryId: subcategory.id,
    listingDetails: details,
  );
}

String? suggestedHousesForSaleTitle(WidgetRef ref) {
  final d = ref.read(tempRealEstateDraftHolderProvider);
  final parts = <String>[];
  if (d.propertyType != null) {
    parts.add(d.propertyType!.label);
  }
  if (d.bedrooms != null) {
    final b = d.bedrooms!;
    if (b == Bedrooms.studio) {
      parts.add('Studio');
    } else if (b != Bedrooms.suggest) {
      parts.add('${b.label} BR');
    }
  }
  if (d.size != null && d.size! > 0) {
    final s = d.size!;
    final t = s == s.roundToDouble() ? s.toInt().toString() : s.toString();
    parts.add('$t m²');
  }
  if (parts.isEmpty) return null;
  return parts.join(' · ');
}

String? suggestedLandForSaleTitle(WidgetRef ref) {
  final d = ref.read(tempRealEstateDraftHolderProvider);
  final parts = <String>[];
  if (d.landType != null) {
    parts.add(d.landType!.label);
  }
  if (d.size != null && d.size! > 0) {
    final s = d.size!;
    final t = s == s.roundToDouble() ? s.toInt().toString() : s.toString();
    parts.add('$t m²');
  }
  if (parts.isEmpty) return null;
  return parts.join(' · ');
}

String? suggestedLandForRentTitle(WidgetRef ref) =>
    suggestedLandForSaleTitle(ref);

String? suggestedCommercialForSaleTitle(WidgetRef ref) {
  final d = ref.read(tempRealEstateDraftHolderProvider);
  final parts = <String>[];
  if (d.commercialType != null) {
    parts.add(d.commercialType!.label);
  }
  if (d.size != null && d.size! > 0) {
    final s = d.size!;
    final t = s == s.roundToDouble() ? s.toInt().toString() : s.toString();
    parts.add('$t m²');
  }
  if (parts.isEmpty) return null;
  return parts.join(' · ');
}

String? suggestedCommercialForRentTitle(WidgetRef ref) =>
    suggestedCommercialForSaleTitle(ref);

String? suggestedChaletsCabinsForSaleTitle(WidgetRef ref) {
  final d = ref.read(tempRealEstateDraftHolderProvider);
  final parts = <String>[];
  if (d.chaletType != null) {
    parts.add(d.chaletType!.label);
  }
  if (d.bedrooms != null) {
    final b = d.bedrooms!;
    if (b == Bedrooms.studio) {
      parts.add('Studio');
    } else if (b != Bedrooms.suggest) {
      parts.add('${b.label} BR');
    }
  }
  if (d.size != null && d.size! > 0) {
    final s = d.size!;
    final t = s == s.roundToDouble() ? s.toInt().toString() : s.toString();
    parts.add('$t m²');
  }
  if (parts.isEmpty) return null;
  return parts.join(' · ');
}

String? suggestedChaletsCabinsForRentTitle(WidgetRef ref) =>
    suggestedChaletsCabinsForSaleTitle(ref);

String? suggestedRoomsForRentTitle(WidgetRef ref) {
  final d = ref.read(tempRealEstateDraftHolderProvider);
  final parts = <String>[];
  if (d.furnished != null) {
    parts.add(d.furnished!.label);
  }
  if (d.size != null && d.size! > 0) {
    final s = d.size!;
    final t = s == s.roundToDouble() ? s.toInt().toString() : s.toString();
    parts.add('$t m²');
  }
  if (parts.isEmpty) return null;
  return parts.join(' · ');
}

String? suggestedHousesForRentTitle(WidgetRef ref) =>
    suggestedHousesForSaleTitle(ref);
