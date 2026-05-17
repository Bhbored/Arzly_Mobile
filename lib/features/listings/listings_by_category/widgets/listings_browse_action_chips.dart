import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/features/listings/shared/listing_location_filter_labels.dart';
import 'package:flutter/material.dart';

class ListingsBrowseActionChips extends StatelessWidget {
  const ListingsBrowseActionChips({
    super.key,
    required this.onFiltersPressed,
    this.onLocationPressed,
    this.locationLabel = ListingLocationFilterLabels.allAreas,
    this.showFilterBadge = false,
  });

  final VoidCallback onFiltersPressed;
  final VoidCallback? onLocationPressed;
  final String locationLabel;
  final bool showFilterBadge;

  bool get _hasLocationFilter =>
      locationLabel != ListingLocationFilterLabels.allAreas;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _BrowseActionChip(
            label: 'Filters',
            icon: Icons.tune_rounded,
            onPressed: onFiltersPressed,
            showBadge: showFilterBadge,
            isActive: showFilterBadge,
          ),
        ),
        SizedBox(width: context.spaceSmall),
        Expanded(
          child: _BrowseActionChip(
            label: locationLabel,
            icon: Icons.location_on_rounded,
            onPressed: onLocationPressed ?? () {},
            isActive: _hasLocationFilter,
          ),
        ),
      ],
    );
  }
}

class _BrowseActionChip extends StatelessWidget {
  const _BrowseActionChip({
    required this.label,
    required this.onPressed,
    this.icon,
    this.showBadge = false,
    this.isActive = false,
  });

  final String label;
  final IconData? icon;
  final VoidCallback onPressed;
  final bool showBadge;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final fill = isActive
        ? colors.onPrimaryContainer.withValues(alpha: 0.5)
        : colors.surfaceContainerLow;
    final border = isActive
        ? colors.primary.withValues(alpha: 0.4)
        : colors.outlineVariant.withValues(alpha: 0.45);
    final foreground = isActive ? colors.primary : colors.onSurface;

    return Material(
      color: fill,
      borderRadius: BorderRadius.circular(5),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: context.paddingSmall,
            vertical: context.spaceSmall * 0.9,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: border),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null) ...[
                Badge(
                  isLabelVisible: showBadge,
                  smallSize: 7,
                  backgroundColor: colors.error,
                  child: Icon(icon, size: 18, color: foreground),
                ),
                SizedBox(width: context.spaceSmall * 0.45),
              ],
              Flexible(
                child: Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: foreground,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
