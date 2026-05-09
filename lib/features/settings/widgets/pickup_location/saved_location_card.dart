import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/domain/entities/pickup_location/pickup_location.dart';
import 'package:arzly/features/settings/widgets/pickup_location/pickup_location_label_display.dart';
import 'package:flutter/material.dart';

class SavedLocationCard extends StatelessWidget {
  final PickupLocation location;
  final VoidCallback onTap;

  const SavedLocationCard({
    super.key,
    required this.location,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Material(
      color: colors.surfaceContainerLow,
      borderRadius: BorderRadius.circular(12),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(context.paddingMedium),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      pickupLabelDisplay(location.label),
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  if (location.isDefault)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: colors.primaryContainer,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        'Default',
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              color: colors.onPrimaryContainer,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                ],
              ),
              SizedBox(height: context.spaceSmall * 0.5),
              Text(
                location.address,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: colors.onSurface,
                    ),
              ),
              if (location.notes != null && location.notes!.isNotEmpty) ...[
                SizedBox(height: context.spaceSmall * 0.5),
                Text(
                  location.notes!,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: colors.onSurfaceVariant,
                      ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
