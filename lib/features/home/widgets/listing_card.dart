import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/utils/real_estate_display_helper.dart';
import 'package:arzly/core/utils/time_ago_helper.dart';
import 'package:arzly/domain/entities/listing/listing.dart';
import 'package:arzly/domain/entities/listing/real_estate_details/real_estate_details.dart';
import 'package:arzly/domain/entities/listing/vehicles_details/vehicles_details.dart';
import 'package:arzly/features/home/widgets/card_stats/real_estate_info_row.dart';
import 'package:arzly/features/home/widgets/card_stats/vehicles_info_row.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class ListingCard extends StatelessWidget {
  final Listing listing;

  const ListingCard({super.key, required this.listing});

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        listing.primaryImageUrl ??
        (listing.imagesUrl.isNotEmpty ? listing.imagesUrl.first : null);
    final isFavorite = _isFavorite(listing);
    final realEstateDetails = listing.listingDetails is RealEstateDetails
        ? listing.listingDetails as RealEstateDetails
        : null;
    final vehiclesDetails = listing.listingDetails is VehiclesDetails
        ? listing.listingDetails as VehiclesDetails
        : null;

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(context.borderRadiusMedium),
        border: Border.all(
          color: Theme.of(
            context,
          ).colorScheme.outlineVariant.withValues(alpha: 0.6),
          width: 2,
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                if (imageUrl != null)
                  FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image: imageUrl,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                    fadeInDuration: const Duration(milliseconds: 250),
                    imageErrorBuilder: (_, __, ___) =>
                        _buildImageFallback(context),
                  )
                else
                  _buildImageFallback(context),
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withValues(alpha: 0.3),
                          Colors.black.withValues(alpha: 0.8),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: _onFavoritePressed,
                      borderRadius: BorderRadius.circular(999),
                      child: Container(
                        padding: const EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          color: Colors.black.withValues(alpha: 0.3),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white.withValues(alpha: 0.35),
                            width: 1,
                          ),
                        ),
                        child: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          size: 17,
                          color: isFavorite
                              ? const Color(0xFFFF4D6D)
                              : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  right: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '\$${listing.price.toStringAsFixed(listing.price.truncateToDouble() == listing.price ? 0 : 2)}',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.15,
                        ),
                      ),
                      SizedBox(height: context.spaceSmall * 0.4),
                      Text(
                        listing.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
              context.paddingSmall,
              context.paddingSmall * 0.8,
              context.paddingSmall,
              context.paddingSmall * 0.8,
            ),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (realEstateDetails != null) ...[
                    RealEstateInfoRow(
                      bedroomsCount: RealEstateDisplayHelper.bedroomsToCount(
                        realEstateDetails.bedrooms,
                      ),
                      bathroomsCount: realEstateDetails.bathrooms ?? 1,
                      areaInSquareMeters:
                          RealEstateDisplayHelper.areaInSquareMeters(
                            realEstateDetails.size,
                          ),
                    ),
                    SizedBox(height: context.spaceSmall),
                  ],
                  if (vehiclesDetails?.year != null &&
                      vehiclesDetails?.kilometers != null) ...[
                    VehiclesInfoRow(
                      year: vehiclesDetails!.year!,
                      kilometers: vehiclesDetails.kilometers!,
                    ),
                    SizedBox(height: context.spaceSmall),
                  ],
                  Text(
                    listing.pickupLocation.address,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: context.spaceSmall),
                  Text(
                    TimeAgoHelper.format(listing.createdAt),
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onFavoritePressed() {}

  bool _isFavorite(Listing listing) {
    return false;
  }

  Widget _buildImageFallback(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Theme.of(context).colorScheme.surfaceContainerLow,
            Theme.of(context).colorScheme.surfaceContainerHighest,
          ],
        ),
      ),
      child: const Center(child: Icon(Icons.image_not_supported_outlined)),
    );
  }
}
