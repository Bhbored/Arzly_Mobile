import 'package:arzly/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class PickupLocationDeviceCoordinatesSection extends StatelessWidget {
  final bool isLoading;
  final bool hasCoordinates;
  final bool showUpdateCoordinatesHint;
  final bool requestEnabled;
  final VoidCallback onRequestLocation;

  const PickupLocationDeviceCoordinatesSection({
    super.key,
    required this.isLoading,
    required this.hasCoordinates,
    required this.showUpdateCoordinatesHint,
    this.requestEnabled = true,
    required this.onRequestLocation,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final gpsButtonStyle = OutlinedButton.styleFrom(
      padding: EdgeInsets.symmetric(
        vertical: context.spaceSmall,
        horizontal: context.paddingMedium * 0.75,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          context.borderRadiusMedium + 4,
        ),
      ),
    );

    final panelRadius = BorderRadius.circular(context.borderRadiusLarge - 4);
    return Material(
      color: colors.surfaceContainerLow.withValues(alpha: 0.92),
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      shadowColor: Colors.transparent,
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
                Icon(
                  Icons.near_me_rounded,
                  size: 18,
                  color: colors.primary,
                ),
                SizedBox(width: context.spaceSmall * 0.5),
                Text(
                  'Device location',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: colors.onSurface,
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ],
            ),
            SizedBox(height: context.spaceSmall),
            if (isLoading)
              Row(
                children: [
                  SizedBox(
                    width: 22,
                    height: 22,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: colors.primary,
                    ),
                  ),
                  SizedBox(width: context.spaceSmall),
                  Text(
                    'Getting location…',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: colors.onSurface,
                        ),
                  ),
                ],
              )
            else if (hasCoordinates) ...[
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Location captured',
                          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        if (showUpdateCoordinatesHint) ...[
                          SizedBox(height: context.spaceSmall),
                          Text(
                            'Update coordinates with your current position using the button below.',
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  color: colors.onSurfaceVariant,
                                  fontStyle: FontStyle.italic,
                                ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: context.spaceSmall),
              OutlinedButton.icon(
                style: gpsButtonStyle,
                onPressed: requestEnabled ? onRequestLocation : null,
                icon: const Icon(Icons.my_location_rounded, size: 20),
                label: Text(
                  showUpdateCoordinatesHint
                      ? 'Update coordinates'
                      : 'Refresh GPS',
                ),
              ),
            ] else
              OutlinedButton.icon(
                style: gpsButtonStyle,
                onPressed: requestEnabled ? onRequestLocation : null,
                icon: const Icon(Icons.my_location_rounded, size: 20),
                label: const Text('Use current location'),
              ),
          ],
        ),
      ),
    );
  }
}
