import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/listing/listing_status.dart';
import 'package:arzly/core/utils/time_ago_helper.dart';
import 'package:arzly/domain/entities/listing/listing.dart';
import 'package:arzly/features/user_listings/widgets/card_variation/user_listing_card_stats_section.dart';
import 'package:arzly/features/user_listings/widgets/card_variation/user_listing_card_status_appearance.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class UserListingCardLayout extends StatelessWidget {
  const UserListingCardLayout({
    super.key,
    required this.listing,
    required this.appearance,
  });

  final Listing listing;
  final UserListingCardStatusAppearance appearance;

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
    final radius = BorderRadius.circular(context.borderRadiusMedium);
    final hasStats = userListingCardHasStats(listing);

    return Material(
      color: colors.surfaceContainerLow,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: radius,
        side: BorderSide(color: appearance.borderColor(colors)),
      ),
      clipBehavior: Clip.antiAlias,
      child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(width: 4, color: appearance.accentColor),
              _UserListingCardThumbnail(
                imageUrl: _imageUrl,
                appearance: appearance,
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
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              listing.title,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: colors.onSurface,
                                    height: 1.2,
                                  ),
                            ),
                          ),
                          SizedBox(width: context.spaceSmall * 0.5),
                          _UserListingCardStatusBadge(
                            status: listing.status,
                            appearance: appearance,
                          ),
                        ],
                      ),
                      SizedBox(height: context.spaceSmall * 0.45),
                      Text(
                        _formattedPrice,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.w800,
                              color: colors.primary,
                              letterSpacing: 0.2,
                            ),
                      ),
                      if (hasStats) ...[
                        SizedBox(height: context.spaceSmall * 0.55),
                        UserListingCardStatsSection(listing: listing),
                      ],
                      SizedBox(height: context.spaceSmall * 0.65),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 15,
                            color: colors.onSurfaceVariant,
                          ),
                          SizedBox(width: context.spaceSmall * 0.35),
                          Expanded(
                            child: Text(
                              listing.pickupLocation.address,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: colors.onSurfaceVariant,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                          SizedBox(width: context.spaceSmall * 0.5),
                          Text(
                            TimeAgoHelper.format(listing.createdAt),
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(
                                  color: colors.onSurfaceVariant
                                      .withValues(alpha: 0.85),
                                ),
                          ),
                        ],
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

class _UserListingCardThumbnail extends StatelessWidget {
  const _UserListingCardThumbnail({
    required this.imageUrl,
    required this.appearance,
  });

  final String? imageUrl;
  final UserListingCardStatusAppearance appearance;

  @override
  Widget build(BuildContext context) {
    final width = context.screenWidth * 0.3;
    final colors = Theme.of(context).colorScheme;

    Widget image = imageUrl != null
        ? CachedNetworkImage(
            imageUrl: imageUrl!,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 200),
            placeholder: (_, _) => ColoredBox(
              color: colors.surfaceContainerHigh,
              child: Center(
                child: SizedBox(
                  width: 22,
                  height: 22,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: colors.primary,
                  ),
                ),
              ),
            ),
            errorWidget: (_, _, _) => _UserListingCardImageFallback(),
          )
        : const _UserListingCardImageFallback();

    if (appearance.desaturateImage) {
      image = ColorFiltered(
        colorFilter: const ColorFilter.matrix(<double>[
          0.2126, 0.7152, 0.0722, 0, 0,
          0.2126, 0.7152, 0.0722, 0, 0,
          0.2126, 0.7152, 0.0722, 0, 0,
          0, 0, 0, 1, 0,
        ]),
        child: image,
      );
    }

    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: context.screenHeight * 0.14,
        minWidth: width,
        maxWidth: width,
      ),
      child: Opacity(
        opacity: appearance.imageOpacity,
        child: image,
      ),
    );
  }
}

class _UserListingCardImageFallback extends StatelessWidget {
  const _UserListingCardImageFallback();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ColoredBox(
      color: colors.surfaceContainerHigh,
      child: Center(
        child: Icon(
          Icons.image_outlined,
          size: context.screenWidth * 0.09,
          color: colors.onSurfaceVariant.withValues(alpha: 0.55),
        ),
      ),
    );
  }
}

class _UserListingCardStatusBadge extends StatelessWidget {
  const _UserListingCardStatusBadge({
    required this.status,
    required this.appearance,
  });

  final ListingStatus status;
  final UserListingCardStatusAppearance appearance;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: appearance.badgeBackground.withValues(alpha: 0.92),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              status.tabIcon,
              size: 13,
              color: appearance.badgeForeground,
            ),
            const SizedBox(width: 4),
            Text(
              status.tabLabel,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: appearance.badgeForeground,
                    letterSpacing: 0.15,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
