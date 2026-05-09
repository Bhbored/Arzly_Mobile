import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/domain/entities/pickup_location/pickup_location.dart';
import 'package:arzly/features/settings/widgets/pickup_location/pickup_location_label_display.dart';
import 'package:arzly/features/settings/widgets/pickup_location/saved_location_map_avatar.dart';
import 'package:flutter/material.dart';

class SavedLocationCard extends StatelessWidget {
  final PickupLocation location;
  final VoidCallback onTap;

  const SavedLocationCard({
    super.key,
    required this.location,
    required this.onTap,
  });

  static String? _mapPreviewUrl(PickupLocation location) {
    final hasCoords =
        location.lat.abs() > 1e-9 || location.lon.abs() > 1e-9;
    if (!hasCoords) return null;
    final lat = location.lat;
    final lon = location.lon;
    return 'https://staticmap.openstreetmap.de/staticmap.php'
        '?center=$lat,$lon&zoom=15&size=128x128&maptype=mapnik';
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Material(
      color: colors.surfaceContainerLow,
      borderRadius: BorderRadius.circular(context.borderRadiusMedium),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(context.paddingMedium),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        pickupLabelDisplay(location.label),
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                      SizedBox(height: context.spaceSmall * 0.5),
                      Text(
                        location.address,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: colors.onSurface,
                            ),
                      ),
                      if (location.isDefault) ...[
                        const Spacer(),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              color: colors.primaryContainer,
                              borderRadius: BorderRadius.circular(
                                context.borderRadiusMedium - 2,
                              ),
                            ),
                            child: Text(
                              'Default',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(
                                    color: colors.onPrimaryContainer,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.2,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                SizedBox(width: context.paddingSmall + 4),
                Center(
                  child: SavedLocationMapAvatar(
                    imageUrl: _mapPreviewUrl(location),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
