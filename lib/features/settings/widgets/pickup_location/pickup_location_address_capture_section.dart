import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/features/settings/widgets/pickup_location/pickup_location_device_coordinates_section.dart';
import 'package:arzly/features/settings/widgets/pickup_location/pickup_location_map_preview.dart';
import 'package:flutter/material.dart';

class PickupLocationAddressCaptureSection extends StatelessWidget {
  const PickupLocationAddressCaptureSection({
    super.key,
    required this.isGpsLoading,
    required this.hasCoordinates,
    required this.showUpdateCoordinatesHint,
    required this.requestEnabled,
    required this.onRequestLocation,
    required this.onSearchAddress,
    this.resolvedAddress,
    this.staticMapUrl,
  });

  final bool isGpsLoading;
  final bool hasCoordinates;
  final bool showUpdateCoordinatesHint;
  final bool requestEnabled;
  final VoidCallback onRequestLocation;
  final VoidCallback onSearchAddress;
  final String? resolvedAddress;
  final String? staticMapUrl;

  bool get _hasResolvedAddress =>
      resolvedAddress != null && resolvedAddress!.trim().isNotEmpty;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final searchButtonStyle = OutlinedButton.styleFrom(
      padding: EdgeInsets.symmetric(
        vertical: context.spaceSmall,
        horizontal: context.paddingMedium * 0.75,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(context.borderRadiusMedium + 4),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        PickupLocationDeviceCoordinatesSection(
          isLoading: isGpsLoading,
          hasCoordinates: hasCoordinates,
          showUpdateCoordinatesHint: showUpdateCoordinatesHint,
          requestEnabled: requestEnabled,
          onRequestLocation: onRequestLocation,
        ),
        SizedBox(height: context.spaceSmall),
        Row(
          children: [
            Expanded(child: Divider(color: colors.outlineVariant.withValues(alpha: 0.5))),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.spaceSmall),
              child: Text(
                'OR',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: colors.onSurfaceVariant,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.8,
                    ),
              ),
            ),
            Expanded(child: Divider(color: colors.outlineVariant.withValues(alpha: 0.5))),
          ],
        ),
        SizedBox(height: context.spaceSmall),
        OutlinedButton.icon(
          style: searchButtonStyle,
          onPressed: requestEnabled ? onSearchAddress : null,
          icon: const Icon(Icons.search_rounded, size: 20),
          label: const Text('Search address'),
        ),
        if (_hasResolvedAddress || staticMapUrl != null) ...[
          SizedBox(height: context.spaceMedium),
          PickupLocationMapPreview(imageUrl: staticMapUrl),
          if (_hasResolvedAddress) ...[
            SizedBox(height: context.spaceSmall),
            Text(
              resolvedAddress!,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: colors.onSurface,
                    height: 1.35,
                  ),
            ),
          ],
        ],
      ],
    );
  }
}
