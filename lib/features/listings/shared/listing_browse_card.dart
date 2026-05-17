import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/utils/time_ago_helper.dart';
import 'package:arzly/domain/entities/listing/listing.dart';
import 'package:arzly/features/listings/shared/listing_browse_card_stats.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ListingBrowseCard extends StatelessWidget {
  const ListingBrowseCard({
    super.key,
    required this.listing,
    required this.categoryName,
  });

  final Listing listing;
  final String categoryName;

  String? get _imageUrl {
    if (listing.primaryImageUrl != null) return listing.primaryImageUrl;
    final urls = listing.imagesUrl;
    if (urls != null && urls.isNotEmpty) return urls.first;
    return null;
  }

  String get _formattedPrice {
    final price = listing.price;
    final decimals = price.truncateToDouble() == price ? 0 : 2;
    return '\$${price.toStringAsFixed(decimals)}';
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final cardHeight = context.screenHeight * 0.15;
    final imageWidth = (cardHeight * 1.05).clamp(
      context.screenWidth * 0.28,
      context.screenWidth * 0.32,
    );
    final radius = BorderRadius.circular(5);
    final hasStats = listingBrowseCardHasStats(listing, categoryName);

    return Material(
      color: colors.surfaceContainerLowest,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: radius,
        side: BorderSide(color: colors.outlineVariant.withValues(alpha: 0.45)),
      ),
      clipBehavior: Clip.antiAlias,
      child: SizedBox(
        height: cardHeight,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              width: imageWidth,
              child: _ListingBrowseCardImage(imageUrl: _imageUrl),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                  context.paddingSmall + 2,
                  context.paddingSmall,
                  context.paddingSmall,
                  context.paddingSmall,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _formattedPrice,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w800,
                        color: colors.primary,
                      ),
                    ),
                    SizedBox(height: context.spaceSmall * 0.35),
                    Text(
                      listing.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: colors.onSurface,
                        height: 1.2,
                      ),
                    ),
                    SizedBox(height: context.spaceSmall * 0.35),
                    Text(
                      listing.pickupLocation.address,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: colors.onSurfaceVariant,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    if (hasStats) ...[
                      SizedBox(height: context.spaceSmall * 0.4),
                      ListingBrowseCardStats(
                        listing: listing,
                        categoryName: categoryName,
                      ),
                    ],
                    const Spacer(),
                    Text(
                      TimeAgoHelper.format(listing.createdAt),
                      maxLines: 1,
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: colors.onSurfaceVariant.withValues(alpha: 0.85),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ListingBrowseCardImage extends StatelessWidget {
  const _ListingBrowseCardImage({required this.imageUrl});

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ColoredBox(
      color: colors.surfaceContainerHigh,
      child: imageUrl != null
          ? CachedNetworkImage(
              imageUrl: imageUrl!,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
              alignment: Alignment.center,
              fadeInDuration: const Duration(milliseconds: 200),
              placeholder: (_, _) => Center(
                child: SizedBox(
                  width: 22,
                  height: 22,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: colors.primary,
                  ),
                ),
              ),
              errorWidget: (_, _, _) => const _ListingBrowseCardImageFallback(),
            )
          : const _ListingBrowseCardImageFallback(),
    );
  }
}

class _ListingBrowseCardImageFallback extends StatelessWidget {
  const _ListingBrowseCardImageFallback();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Center(
      child: Icon(
        Icons.image_outlined,
        size: context.screenWidth * 0.07,
        color: colors.onSurfaceVariant.withValues(alpha: 0.5),
      ),
    );
  }
}
