import 'package:arzly/core/enums/listing/listing_status.dart';
import 'package:arzly/domain/entities/listing/listing.dart';
import 'package:arzly/features/user_listings/widgets/card_variation/user_listing_card_layout.dart';
import 'package:arzly/features/user_listings/widgets/card_variation/user_listing_card_status_appearance.dart';
import 'package:flutter/material.dart';

class SoldListingCardVariation extends StatelessWidget {
  const SoldListingCardVariation({super.key, required this.listing});

  final Listing listing;

  @override
  Widget build(BuildContext context) {
    return UserListingCardLayout(
      listing: listing,
      appearance: ListingStatus.sold.cardAppearance(context),
    );
  }
}
