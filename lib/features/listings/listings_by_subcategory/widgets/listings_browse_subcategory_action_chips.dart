import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/features/listings/shared/listing_location_filter_labels.dart';
import 'package:flutter/material.dart';

class ListingsBrowseSubcategoryActionChips extends StatelessWidget {
  const ListingsBrowseSubcategoryActionChips({
    super.key,
    required this.onFiltersPressed,
    required this.onLocationPressed,
    required this.onSubcategoryFilterPressed,
    required this.locationLabel,
    required this.subcategoryFilterLabel,
    this.showBrowseFilterBadge = false,
    this.showSubcategoryFilterBadge = false,
  });

  final VoidCallback onFiltersPressed;
  final VoidCallback onLocationPressed;
  final VoidCallback onSubcategoryFilterPressed;
  final String locationLabel;
  final String subcategoryFilterLabel;
  final bool showBrowseFilterBadge;
  final bool showSubcategoryFilterBadge;

  bool get _hasLocationFilter =>
      locationLabel != ListingLocationFilterLabels.allAreas;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Expanded(
              child: _BrowseActionChip(
                label: 'Filters',
                icon: Icons.tune_rounded,
                onPressed: onFiltersPressed,
                showBadge: showBrowseFilterBadge,
                isActive: showBrowseFilterBadge,
              ),
            ),
            SizedBox(width: context.paddingSmall),
            Expanded(
              child: _BrowseActionChip(
                label: locationLabel,
                icon: Icons.location_on_rounded,
                onPressed: onLocationPressed,
                isActive: _hasLocationFilter,
              ),
            ),
          ],
        ),
        SizedBox(height: context.spaceMedium),
        _SubcategoryDetailsChip(
          label: subcategoryFilterLabel,
          onPressed: onSubcategoryFilterPressed,
          showBadge: showSubcategoryFilterBadge,
          isActive: showSubcategoryFilterBadge,
        ),
      ],
    );
  }
}

class _SubcategoryDetailsChip extends StatelessWidget {
  const _SubcategoryDetailsChip({
    required this.label,
    required this.onPressed,
    required this.showBadge,
    required this.isActive,
  });

  final String label;
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
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: context.paddingSmall,
            vertical: context.spaceSmall,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: border),
          ),
          child: Row(
            children: [
              Badge(
                isLabelVisible: showBadge,
                smallSize: 7,
                backgroundColor: colors.error,
                child: Icon(
                  Icons.directions_car_rounded,
                  size: 20,
                  color: foreground,
                ),
              ),
              SizedBox(width: context.paddingSmall),
              Expanded(
                child: Text(
                  label,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: foreground,
                        height: 1.25,
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
            vertical: context.spaceSmall,
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
                SizedBox(width: context.spaceSmall * 0.35),
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
