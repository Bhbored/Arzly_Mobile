import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/features/settings/widgets/pickup_location/pickup_location_device_coordinates_section.dart';
import 'package:arzly/features/settings/widgets/pickup_location/pickup_location_static_map.dart';
import 'package:arzly/features/settings/widgets/pickup_location/pickup_location_search_address_section.dart';
import 'package:flutter/material.dart';

enum PickupLocationAddressCaptureMethod { device, search }

class PickupLocationAddressCaptureSection extends StatelessWidget {
  const PickupLocationAddressCaptureSection({
    super.key,
    required this.selectedMethod,
    required this.onMethodChanged,
    required this.isGpsLoading,
    required this.hasCoordinates,
    required this.showUpdateCoordinatesHint,
    required this.requestEnabled,
    required this.onRequestLocation,
    required this.onSearchAddress,
    this.resolvedAddress,
    this.staticMapUrl,
    this.latitude,
    this.longitude,
    this.fetchMapFromCoordinates = false,
  });

  final PickupLocationAddressCaptureMethod? selectedMethod;
  final ValueChanged<PickupLocationAddressCaptureMethod> onMethodChanged;
  final bool isGpsLoading;
  final bool hasCoordinates;
  final bool showUpdateCoordinatesHint;
  final bool requestEnabled;
  final VoidCallback onRequestLocation;
  final VoidCallback onSearchAddress;
  final String? resolvedAddress;
  final String? staticMapUrl;
  final double? latitude;
  final double? longitude;
  final bool fetchMapFromCoordinates;

  bool get _hasResolvedAddress =>
      resolvedAddress != null && resolvedAddress!.trim().isNotEmpty;

  bool get _showMapPreview => hasCoordinates;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SegmentedButton<PickupLocationAddressCaptureMethod>(
          segments: const [
            ButtonSegment(
              value: PickupLocationAddressCaptureMethod.device,
              icon: Icon(Icons.my_location_rounded),
              label: Text('Device GPS'),
            ),
            ButtonSegment(
              value: PickupLocationAddressCaptureMethod.search,
              icon: Icon(Icons.search_rounded),
              label: Text('Search'),
            ),
          ],
          selected: selectedMethod != null ? {selectedMethod!} : {},
          emptySelectionAllowed: true,
          onSelectionChanged: (next) {
            if (next.isNotEmpty) {
              onMethodChanged(next.first);
            }
          },
          style: ButtonStyle(
            visualDensity: VisualDensity.standard,
            padding: WidgetStatePropertyAll(
              EdgeInsets.symmetric(
                horizontal: context.paddingSmall,
                vertical: context.spaceSmall,
              ),
            ),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  context.borderRadiusMedium + 2,
                ),
              ),
            ),
            backgroundColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.selected)) {
                return colors.primaryContainer;
              }
              return colors.surfaceContainerHigh.withValues(alpha: 0.5);
            }),
            foregroundColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.selected)) {
                return colors.onPrimaryContainer;
              }
              return colors.onSurface;
            }),
            side: WidgetStatePropertyAll(
              BorderSide(
                color: colors.outlineVariant.withValues(alpha: 0.55),
              ),
            ),
          ),
        ),
        if (selectedMethod == null) ...[
          SizedBox(height: context.spaceSmall),
          Text(
            'Choose how you want to set the pickup address.',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: colors.onSurfaceVariant,
                  fontStyle: FontStyle.italic,
                ),
          ),
        ],
        if (selectedMethod == PickupLocationAddressCaptureMethod.device) ...[
          SizedBox(height: context.spaceMedium),
          PickupLocationDeviceCoordinatesSection(
            isLoading: isGpsLoading,
            hasCoordinates: hasCoordinates,
            showUpdateCoordinatesHint: showUpdateCoordinatesHint,
            requestEnabled: requestEnabled,
            onRequestLocation: onRequestLocation,
          ),
        ],
        if (selectedMethod == PickupLocationAddressCaptureMethod.search) ...[
          SizedBox(height: context.spaceMedium),
          PickupLocationSearchAddressSection(
            hasResolvedAddress: _hasResolvedAddress && hasCoordinates,
            requestEnabled: requestEnabled,
            onSearchAddress: onSearchAddress,
          ),
        ],
        if (_showMapPreview && selectedMethod != null) ...[
          SizedBox(height: context.spaceMedium),
          PickupLocationMapPreview(
            imageUrl: staticMapUrl,
            latitude: latitude,
            longitude: longitude,
            fetchUrlFromCoordinates: fetchMapFromCoordinates,
          ),
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
