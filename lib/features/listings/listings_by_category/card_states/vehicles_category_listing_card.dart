import 'package:arzly/domain/entities/listing/listing.dart';
import 'package:arzly/features/listings/shared/listing_browse_card.dart';
import 'package:arzly/features/listings/shared/listing_category_names.dart';
import 'package:flutter/material.dart';

class VehiclesCategoryListingCard extends StatelessWidget {
  const VehiclesCategoryListingCard({super.key, required this.listing});

  final Listing listing;

  @override
  Widget build(BuildContext context) {
    return ListingBrowseCard(
      listing: listing,
      categoryName: ListingCategoryNames.vehicles,
    );
  }
}
