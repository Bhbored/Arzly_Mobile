import 'package:arzly/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class ListingsBrowseActionChips extends StatelessWidget {
  const ListingsBrowseActionChips({
    super.key,
    required this.onFiltersPressed,
    this.onLocationPressed,
    this.locationLabel = 'All country',
    this.showFilterBadge = false,
  });

  final VoidCallback onFiltersPressed;
  final VoidCallback? onLocationPressed;
  final String locationLabel;
  final bool showFilterBadge;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        context.paddingSmall,
        context.spaceSmall,
        context.paddingSmall,
        context.spaceSmall * 0.5,
      ),
      child: Row(
        children: [
          Expanded(
            child: _BrowseActionChip(
              label: 'Filters',
              icon: Icons.tune_rounded,
              onPressed: onFiltersPressed,
              showBadge: showFilterBadge,
            ),
          ),
          SizedBox(width: context.spaceSmall),
          Expanded(
            child: _BrowseActionChip(
              label: locationLabel,
              onPressed: onLocationPressed ?? () {},
            ),
          ),
        ],
      ),
    );
  }
}

class _BrowseActionChip extends StatelessWidget {
  const _BrowseActionChip({
    required this.label,
    this.icon,
    required this.onPressed,
    this.showBadge = false,
  });

  final String label;
  final IconData? icon;
  final VoidCallback onPressed;
  final bool showBadge;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Material(
      color: colors.surfaceContainerLow,
      borderRadius: BorderRadius.circular(context.borderRadiusMedium),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: context.paddingSmall,
            vertical: context.spaceSmall * 0.85,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(context.borderRadiusMedium),
            border: Border.all(
              color: colors.outlineVariant.withValues(alpha: 0.45),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null) ...[
                Badge(
                  isLabelVisible: showBadge,
                  smallSize: 7,
                  child: Icon(icon, size: 18, color: colors.onSurface),
                ),
                SizedBox(width: context.spaceSmall * 0.45),
              ],
              Flexible(
                child: Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: colors.onSurface,
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
