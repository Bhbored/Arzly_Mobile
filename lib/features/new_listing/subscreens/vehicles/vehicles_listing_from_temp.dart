import 'package:arzly/data/providers/new_listing/temp_listing_draft/temp_listing_draft_holder.dart';
import 'package:arzly/data/providers/new_listing/temp_vehicles_details/temp_vehicles_details_holder.dart';
import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/listing/listing.dart';
import 'package:arzly/domain/entities/listing/vehicles_details/vehicles_details.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Listing buildListingFromTempDrafts(
  WidgetRef ref, {
  required Category category,
  required SubCategory subcategory,
  required bool isNumberPlates,
}) {
  final listing = ref.read(tempListingDraftHolderProvider);
  final details = ref.read(tempVehiclesDetailsHolderProvider);

  if (isNumberPlates) {
    return listing.copyWith(
      categoryId: category.id,
      subcategoryId: subcategory.id,
      listingDetails: VehiclesDetails(
        numberOfDigits: details.numberOfDigits,
      ),
    );
  }

  return listing.copyWith(
    categoryId: category.id,
    subcategoryId: subcategory.id,
    listingDetails: details,
  );
}

String? suggestedMotorcyclesTitle(WidgetRef ref) {
  final d = ref.read(tempVehiclesDetailsHolderProvider);
  final parts = <String>[
    ?d.motorcycleBrand,
    ?d.motorcycleModel,
    ?d.year?.toString(),
  ];
  if (parts.isEmpty) return null;
  return parts.join(' ');
}

String? suggestedCarsForSaleTitle(WidgetRef ref) {
  final d = ref.read(tempVehiclesDetailsHolderProvider);
  final parts = <String>[?d.carBrand, ?d.carModel, ?d.year?.toString()];
  if (parts.isEmpty) return null;
  return parts.join(' ');
}
