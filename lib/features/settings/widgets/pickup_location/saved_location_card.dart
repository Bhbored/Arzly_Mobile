import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/location_preset.dart';
import 'package:arzly/domain/entities/pickup_location/pickup_location.dart';
import 'package:arzly/features/settings/widgets/pickup_location/pickup_location_static_map.dart';
import 'package:arzly/features/settings/widgets/pickup_location/saved_location_card_label_badge.dart';
import 'package:flutter/material.dart';

class SavedLocationCard extends StatelessWidget {
  const SavedLocationCard({
    super.key,
    required this.location,
    required this.onTap,
  });

  final PickupLocation location;
  final VoidCallback onTap;

  static bool hasCoords(PickupLocation location) =>
      location.lat.abs() > 1e-9 || location.lon.abs() > 1e-9;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final radius = BorderRadius.circular(context.borderRadiusLarge - 4);

    return Material(
      color: colors.surfaceContainerLow.withValues(alpha: 0.95),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: radius,
        side: BorderSide(color: colors.outlineVariant.withValues(alpha: 0.4)),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(context.paddingMedium * 0.85),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SavedLocationMapThumbnail(
                latitude: hasCoords(location) ? location.lat : null,
                longitude: hasCoords(location) ? location.lon : null,
              ),
              SizedBox(width: context.paddingSmall + 4),
              Expanded(child: _SavedLocationCardBody(location: location)),
              Icon(
                Icons.chevron_right_rounded,
                color: colors.onSurfaceVariant.withValues(alpha: 0.75),
                size: context.screenHeight * 0.04,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SavedLocationCardBody extends StatelessWidget {
  const _SavedLocationCardBody({required this.location});

  final PickupLocation location;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            SavedLocationCardLabelBadge(label: location.label),
            if (location.isDefault) ...[
              SizedBox(width: context.spaceSmall),
              const _SavedLocationDefaultChip(),
            ],
          ],
        ),
        SizedBox(height: context.spaceSmall * 0.65),
        Text(
          location.locationPreset.label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
            color: colors.primary,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.1,
          ),
        ),
        SizedBox(height: context.spaceSmall * 0.35),
        Text(
          location.address,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: colors.onSurface,
            fontWeight: FontWeight.w500,
            height: 1.3,
          ),
        ),
      ],
    );
  }
}

class _SavedLocationDefaultChip extends StatelessWidget {
  const _SavedLocationDefaultChip();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: context.spaceSmall,
        vertical: context.spaceSmall * 0.35,
      ),
      decoration: BoxDecoration(
        color: colors.tertiaryContainer.withValues(alpha: 0.9),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.star_rounded, size: 14, color: colors.onTertiaryContainer),
          SizedBox(width: context.spaceSmall * 0.25),
          Text(
            'Default',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: colors.onTertiaryContainer,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.15,
            ),
          ),
        ],
      ),
    );
  }
}
