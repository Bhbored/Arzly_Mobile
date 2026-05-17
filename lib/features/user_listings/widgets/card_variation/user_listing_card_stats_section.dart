import 'package:arzly/core/enums/listing_owned/motors/vehicle_condition.dart';
import 'package:arzly/core/utils/real_estate_display_helper.dart';
import 'package:arzly/domain/entities/listing/listing.dart';
import 'package:arzly/domain/entities/listing/real_estate_details/real_estate_details.dart';
import 'package:arzly/domain/entities/listing/vehicles_details/vehicles_details.dart';
import 'package:arzly/features/home/widgets/card_stats/real_estate_info_row.dart';
import 'package:arzly/features/home/widgets/card_stats/vehicles_info_row.dart';
import 'package:flutter/material.dart';

class UserListingCardStatsSection extends StatelessWidget {
  const UserListingCardStatsSection({super.key, required this.listing});

  final Listing listing;

  @override
  Widget build(BuildContext context) {
    final realEstateDetails = listing.listingDetails is RealEstateDetails
        ? listing.listingDetails as RealEstateDetails
        : null;
    final vehiclesDetails = listing.listingDetails is VehiclesDetails
        ? listing.listingDetails as VehiclesDetails
        : null;

    if (realEstateDetails != null) {
      return RealEstateInfoRow(
        bedroomsCount: RealEstateDisplayHelper.bedroomsToCount(
          realEstateDetails.bedrooms,
        ),
        bathroomsCount: realEstateDetails.bathrooms ?? 1,
        areaInSquareMeters: RealEstateDisplayHelper.areaInSquareMeters(
          realEstateDetails.size,
        ),
      );
    }

    if (vehiclesDetails?.year != null &&
        (vehiclesDetails?.kilometers != null ||
            vehiclesDetails?.condition == VehicleCondition.new_)) {
      return VehiclesInfoRow(
        year: vehiclesDetails!.year!,
        kilometers: vehiclesDetails.kilometers,
        condition: vehiclesDetails.condition,
      );
    }

    return const SizedBox.shrink();
  }
}

bool userListingCardHasStats(Listing listing) {
  if (listing.listingDetails is RealEstateDetails) return true;

  final vehiclesDetails = listing.listingDetails is VehiclesDetails
      ? listing.listingDetails as VehiclesDetails
      : null;

  return vehiclesDetails?.year != null &&
      (vehiclesDetails?.kilometers != null ||
          vehiclesDetails?.condition == VehicleCondition.new_);
}
