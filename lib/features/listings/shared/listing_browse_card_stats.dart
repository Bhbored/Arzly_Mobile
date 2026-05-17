import 'package:arzly/core/enums/listing_owned/motors/vehicle_condition.dart';
import 'package:arzly/core/utils/real_estate_display_helper.dart';
import 'package:arzly/domain/entities/listing/listing.dart';
import 'package:arzly/domain/entities/listing/real_estate_details/real_estate_details.dart';
import 'package:arzly/domain/entities/listing/vehicles_details/vehicles_details.dart';
import 'package:arzly/features/home/widgets/card_stats/real_estate_info_row.dart';
import 'package:arzly/features/home/widgets/card_stats/vehicles_info_row.dart';
import 'package:arzly/features/listings/shared/listing_category_names.dart';
import 'package:flutter/material.dart';

bool listingBrowseCardHasStats(Listing listing, String categoryName) {
  if (categoryName == ListingCategoryNames.realEstate &&
      listing.listingDetails is RealEstateDetails) {
    return true;
  }

  final vehiclesDetails = listing.listingDetails is VehiclesDetails
      ? listing.listingDetails as VehiclesDetails
      : null;

  return vehiclesDetails?.year != null &&
      (vehiclesDetails?.kilometers != null ||
          vehiclesDetails?.condition == VehicleCondition.new_);
}

class ListingBrowseCardStats extends StatelessWidget {
  const ListingBrowseCardStats({
    super.key,
    required this.listing,
    required this.categoryName,
  });

  final Listing listing;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    if (!listingBrowseCardHasStats(listing, categoryName)) {
      return const SizedBox.shrink();
    }

    final compactStyle = Theme.of(context).textTheme.labelSmall?.copyWith(
          color: Theme.of(context).colorScheme.onSurfaceVariant,
          fontWeight: FontWeight.w600,
          fontSize: 12,
        );

    final realEstateDetails = listing.listingDetails is RealEstateDetails
        ? listing.listingDetails as RealEstateDetails
        : null;
    final vehiclesDetails = listing.listingDetails is VehiclesDetails
        ? listing.listingDetails as VehiclesDetails
        : null;

    if (categoryName == ListingCategoryNames.realEstate &&
        realEstateDetails != null) {
      return DefaultTextStyle(
        style: compactStyle!,
        child: RealEstateInfoRow(
          bedroomsCount: RealEstateDisplayHelper.bedroomsToCount(
            realEstateDetails.bedrooms,
          ),
          bathroomsCount: realEstateDetails.bathrooms ?? 1,
          areaInSquareMeters: RealEstateDisplayHelper.areaInSquareMeters(
            realEstateDetails.size,
          ),
        ),
      );
    }

    if (vehiclesDetails?.year != null &&
        (vehiclesDetails?.kilometers != null ||
            vehiclesDetails?.condition == VehicleCondition.new_)) {
      return DefaultTextStyle(
        style: compactStyle!,
        child: VehiclesInfoRow(
          year: vehiclesDetails!.year!,
          kilometers: vehiclesDetails.kilometers,
          condition: vehiclesDetails.condition,
        ),
      );
    }

    return const SizedBox.shrink();
  }
}
