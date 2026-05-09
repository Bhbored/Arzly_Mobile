import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/features/settings/widgets/pickup_location/pickup_location_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SavedLocationsEmptyView extends ConsumerWidget {
  const SavedLocationsEmptyView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = Theme.of(context).colorScheme;
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.paddingLarge),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.location_off_outlined,
              size: context.screenWidth * 0.18,
              color: colors.outline,
            ),
            SizedBox(height: context.spaceMedium),
            Text(
              'No Saved Locations',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: colors.onSurface,
                  ),
            ),
            SizedBox(height: context.spaceSmall),
            Text(
              'Pickup spots you add will show up here.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: colors.onSurfaceVariant,
                  ),
            ),
            SizedBox(height: context.spaceLarge),
            FilledButton.icon(
              onPressed: () => openPickupLocationScreen(context),
              icon: const Icon(Icons.add_location_alt_outlined),
              label: const Text('Add location'),
            ),
          ],
        ),
      ),
    );
  }
}
