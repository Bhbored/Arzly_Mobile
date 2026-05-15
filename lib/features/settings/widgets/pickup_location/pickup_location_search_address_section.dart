import 'package:arzly/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class PickupLocationSearchAddressSection extends StatelessWidget {
  const PickupLocationSearchAddressSection({
    super.key,
    required this.hasResolvedAddress,
    required this.requestEnabled,
    required this.onSearchAddress,
  });

  final bool hasResolvedAddress;
  final bool requestEnabled;
  final VoidCallback onSearchAddress;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final buttonStyle = OutlinedButton.styleFrom(
      padding: EdgeInsets.symmetric(
        vertical: context.spaceSmall,
        horizontal: context.paddingMedium * 0.75,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(context.borderRadiusMedium + 4),
      ),
    );
    final panelRadius = BorderRadius.circular(context.borderRadiusLarge - 4);

    return Material(
      color: colors.surfaceContainerLow.withValues(alpha: 0.92),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: colors.outlineVariant.withValues(alpha: 0.45),
        ),
        borderRadius: panelRadius,
      ),
      child: Padding(
        padding: EdgeInsets.all(context.paddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Icon(Icons.search_rounded, size: 18, color: colors.primary),
                SizedBox(width: context.spaceSmall * 0.5),
                Text(
                  'Search address',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: colors.onSurface,
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ],
            ),
            SizedBox(height: context.spaceSmall),
            if (hasResolvedAddress) ...[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.check_circle_rounded,
                    color: colors.tertiary,
                    size: 26,
                  ),
                  SizedBox(width: context.spaceSmall),
                  Expanded(
                    child: Text(
                      'Address selected',
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: context.spaceSmall),
              OutlinedButton.icon(
                style: buttonStyle,
                onPressed: requestEnabled ? onSearchAddress : null,
                icon: const Icon(Icons.edit_location_alt_outlined, size: 20),
                label: const Text('Change address'),
              ),
            ] else
              OutlinedButton.icon(
                style: buttonStyle,
                onPressed: requestEnabled ? onSearchAddress : null,
                icon: const Icon(Icons.search_rounded, size: 20),
                label: const Text('Find address'),
              ),
          ],
        ),
      ),
    );
  }
}
