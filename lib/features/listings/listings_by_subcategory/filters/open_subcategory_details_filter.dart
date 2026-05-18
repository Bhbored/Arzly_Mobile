import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/listing/phones_details/phones_details.dart';
import 'package:arzly/domain/entities/listing/real_estate_details/real_estate_details.dart';
import 'package:arzly/domain/entities/listing/vehicles_details/vehicles_details.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';
import 'package:arzly/features/listings/listings_by_subcategory/filters/phones/phones_subcategory_filter_screen.dart';
import 'package:arzly/features/listings/listings_by_subcategory/filters/real_estate/real_estate_subcategory_filter_screen.dart';
import 'package:arzly/features/listings/listings_by_subcategory/filters/vehicles/vehicles_subcategory_filter_screen.dart';
import 'package:arzly/features/new_listing/backend_listing_catalog.dart';
import 'package:flutter/material.dart';

Future<Object?> openSubcategoryDetailsFilter(
  BuildContext context, {
  required Category category,
  required SubCategory subcategory,
  Object? initialDetails,
}) async {
  final categoryName = category.name.trim();

  if (categoryName == BackendListingCatalog.vehicles) {
    final initial =
        initialDetails is VehiclesDetails ? initialDetails : null;
    return openVehiclesSubcategoryFilter(
      context,
      subcategoryName: subcategory.name,
      initialDetails: initial,
    );
  }

  if (categoryName == BackendListingCatalog.realEstate) {
    final initial =
        initialDetails is RealEstateDetails ? initialDetails : null;
    return openRealEstateSubcategoryFilter(
      context,
      subcategoryName: subcategory.name,
      initialDetails: initial,
    );
  }

  if (categoryName == BackendListingCatalog.phonesAndGadgets) {
    final initial = initialDetails is PhonesDetails ? initialDetails : null;
    return openPhonesSubcategoryFilter(
      context,
      subcategoryName: subcategory.name,
      initialDetails: initial,
    );
  }

  return null;
}
