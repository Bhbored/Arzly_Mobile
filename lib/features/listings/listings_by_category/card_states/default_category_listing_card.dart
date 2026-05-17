import 'package:arzly/domain/entities/listing/listing.dart';
import 'package:arzly/features/listings/shared/listing_browse_card.dart';
import 'package:flutter/material.dart';

class DefaultCategoryListingCard extends StatelessWidget {
  const DefaultCategoryListingCard({
    super.key,
    required this.listing,
    required this.categoryName,
  });

  final Listing listing;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return ListingBrowseCard(
      listing: listing,
      categoryName: categoryName,
    );
  }
}
