import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/data/providers/pickup_location/pickup_locations_provider.dart';
import 'package:arzly/domain/entities/pickup_location/pickup_location.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/car_picker_search_decoration.dart';
import 'package:arzly/features/settings/sub_screens/saved_locations_screen.dart';
import 'package:arzly/features/settings/widgets/pickup_location/pickup_location_label_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListingPickupLocationField extends ConsumerWidget {
  const ListingPickupLocationField({
    super.key,
    required this.fieldsResetKey,
    required this.value,
    required this.onChanged,
    required this.showRequiredErrors,
    required this.pageBg,
  });

  final Object? fieldsResetKey;
  final PickupLocation? value;
  final ValueChanged<PickupLocation?> onChanged;
  final bool showRequiredErrors;
  final Color pageBg;

  Future<void> _openSavedLocations(BuildContext context, WidgetRef ref) async {
    await Navigator.of(context).push<void>(
      MaterialPageRoute(builder: (context) => const SavedLocationsScreen()),
    );
    ref.invalidate(pickupLocationsProvider);
    await ref.read(pickupLocationsProvider.notifier).refresh();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scheme = Theme.of(context).colorScheme;
    final locationsAsync = ref.watch(pickupLocationsProvider);
    final menuRadius = BorderRadius.circular(context.borderRadiusMedium);

    ref.listen<AsyncValue<List<PickupLocation>>>(pickupLocationsProvider, (
      _,
      next,
    ) {
      next.whenData((locations) {
        if (value != null || locations.isEmpty) return;
        PickupLocation? defaultLocation;
        for (final location in locations) {
          if (location.isDefault) {
            defaultLocation = location;
            break;
          }
        }
        onChanged(defaultLocation ?? locations.first);
      });
    });

    return FormField<PickupLocation>(
      key: ValueKey(Object.hash(fieldsResetKey, 'pickup_location')),
      initialValue: value,
      autovalidateMode: showRequiredErrors
          ? AutovalidateMode.onUserInteraction
          : AutovalidateMode.disabled,
      validator: (selected) => selected == null && showRequiredErrors
          ? 'Choose a pickup location'
          : null,
      builder: (state) {
        if (state.value != value) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (state.value != value) {
              state.didChange(value);
            }
          });
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            locationsAsync.when(
              loading: () => _PickupLocationStatusMessage(
                scheme: scheme,
                message: 'Loading saved locations...',
                showLoader: true,
              ),
              error: (_, _) => Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _PickupLocationStatusMessage(
                    scheme: scheme,
                    message: 'Could not load saved locations.',
                  ),
                  SizedBox(height: context.spaceSmall),
                  OutlinedButton(
                    onPressed: () => ref.invalidate(pickupLocationsProvider),
                    child: const Text('Try again'),
                  ),
                ],
              ),
              data: (locations) {
                if (locations.isEmpty) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      _PickupLocationStatusMessage(
                        scheme: scheme,
                        message: 'No saved locations yet.',
                      ),
                      SizedBox(height: context.spaceSmall),
                      OutlinedButton.icon(
                        onPressed: () => _openSavedLocations(context, ref),
                        icon: const Icon(Icons.add_location_alt_outlined),
                        label: const Text('Add new pickup location'),
                      ),
                    ],
                  );
                }

                final hintStyle = Theme.of(context).textTheme.bodyMedium
                    ?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: scheme.onSurfaceVariant,
                      height: 1.2,
                    );
                final valueStyle = Theme.of(context).textTheme.bodyMedium
                    ?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: scheme.onSurface,
                      height: 1.2,
                    );
                final baseDecoration = carForSaleVersionFieldDecoration(
                  context,
                  pageBg,
                  scheme,
                  hintText: 'Choose location',
                );

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    InputDecorator(
                      decoration: baseDecoration.copyWith(
                        hintText: null,
                        errorText: state.hasError ? state.errorText : null,
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: context.paddingMedium,
                          vertical: context.spaceSmall * 0.40,
                        ),
                      ),
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          return DropdownButtonHideUnderline(
                            child: DropdownButton<PickupLocation>(
                              padding: EdgeInsets.zero,
                              isExpanded: true,
                              borderRadius: menuRadius,
                              menuWidth: constraints.maxWidth,
                              itemHeight: kMinInteractiveDimension,
                              menuMaxHeight:
                                  context.carsForSaleDropdownMenuMaxHeight(
                                    itemCount: locations.length,
                                  ),
                              dropdownColor: scheme.surfaceContainerHigh,
                              elevation: 4,
                              alignment: AlignmentDirectional.bottomStart,
                              hint: Align(
                                alignment: AlignmentDirectional.centerStart,
                                child: Text(
                                  'Choose location',
                                  style: hintStyle,
                                ),
                              ),
                              value: state.value,
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: scheme.onSurfaceVariant,
                                size: 22,
                              ),
                              items: [
                                for (final location in locations)
                                  DropdownMenuItem(
                                    value: location,
                                    child: Text(
                                      _pickupLocationLabel(location),
                                      style: valueStyle,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                              ],
                              onChanged: (next) {
                                state.didChange(next);
                                onChanged(next);
                              },
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: context.spaceSmall),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: TextButton.icon(
                        onPressed: () => _openSavedLocations(context, ref),
                        icon: const Icon(Icons.add_location_alt_outlined),
                        label: const Text('Add new pickup location'),
                      ),
                    ),
                  ],
                );
              },
            ),
            if (state.hasError &&
                locationsAsync.maybeWhen(
                  data: (locations) => locations.isEmpty,
                  orElse: () => true,
                )) ...[
              SizedBox(height: context.spaceSmall * 0.5),
              Text(
                state.errorText!,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: scheme.error,
                ),
              ),
            ],
          ],
        );
      },
    );
  }
}

class _PickupLocationStatusMessage extends StatelessWidget {
  const _PickupLocationStatusMessage({
    required this.scheme,
    required this.message,
    this.showLoader = false,
  });

  final ColorScheme scheme;
  final String message;
  final bool showLoader;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (showLoader) ...[
          SizedBox(
            width: 18,
            height: 18,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: scheme.primary,
            ),
          ),
          SizedBox(width: context.paddingSmall),
        ],
        Expanded(
          child: Text(
            message,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: scheme.onSurfaceVariant,
            ),
          ),
        ),
      ],
    );
  }
}

String _pickupLocationLabel(PickupLocation location) {
  final label = pickupLabelDisplay(location.label);
  final address = location.address.trim();
  if (address.isEmpty) return label;
  return '$label · $address';
}
