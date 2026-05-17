import 'package:arzly/domain/entities/listing/listing.dart';
import 'package:arzly/features/listings/listings_by_category/card_states/default_category_listing_card.dart';
import 'package:arzly/features/listings/listings_by_category/card_states/real_estate_category_listing_card.dart';
import 'package:arzly/features/listings/listings_by_category/card_states/vehicles_category_listing_card.dart';
import 'package:arzly/features/listings/shared/listing_category_names.dart';
import 'package:flutter/material.dart';

class CategoryListingCard extends StatelessWidget {
  const CategoryListingCard({
    super.key,
    required this.listing,
    required this.categoryName,
  });

  final Listing listing;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return switch (categoryName) {
      ListingCategoryNames.realEstate =>
        RealEstateCategoryListingCard(listing: listing),
      ListingCategoryNames.vehicles =>
        VehiclesCategoryListingCard(listing: listing),
      _ => DefaultCategoryListingCard(
          listing: listing,
          categoryName: categoryName,
        ),
    };
  }
}
