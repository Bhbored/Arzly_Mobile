import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/exceptions/api_exception.dart';
import 'package:arzly/data/providers/pickup_location/pickup_locations_provider.dart';
import 'package:arzly/features/settings/widgets/pickup_location/saved_location_card.dart';
import 'package:arzly/features/settings/widgets/pickup_location/saved_locations_empty_view.dart';
import 'package:arzly/features/settings/widgets/pickup_location/pickup_location_screen.dart';
import 'package:arzly/features/shared/skeletons/saved_locations_list_skeleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SavedLocationsScreen extends ConsumerWidget {
  const SavedLocationsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = Theme.of(context).colorScheme;
    final locationsAsync = ref.watch(pickupLocationsProvider);

    return Scaffold(
      backgroundColor: colors.surface,
      appBar: AppBar(
        backgroundColor: colors.surface,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        titleSpacing: 0,
        title: Text(
          'Saved Locations',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w700,
            color: colors.onSurface,
          ),
        ),
        actions: [
          IconButton(
            tooltip: 'Add location',
            onPressed: () => openPickupLocationScreen(context),
            icon: const Icon(Icons.add_location_alt_outlined),
          ),
        ],
      ),
      body: RefreshIndicator(
        color: Theme.of(context).colorScheme.primary,
        onRefresh: () async {
          ref.invalidate(pickupLocationsProvider);
          await ref.read(pickupLocationsProvider.notifier).refresh();
        },
        child: locationsAsync.when(
          data: (locations) {
            if (locations.isEmpty) {
              return const SavedLocationsEmptyView();
            }
            return ListView.separated(
              padding: EdgeInsets.fromLTRB(
                context.paddingMedium,
                context.spaceSmall,
                context.paddingMedium,
                context.bottomPadding + context.spaceMedium,
              ),
              itemCount: locations.length,
              separatorBuilder: (_, _) => SizedBox(height: context.spaceSmall),
              itemBuilder: (context, index) {
                final loc = locations[index];
                return SavedLocationCard(
                  location: loc,
                  onTap: () => openPickupLocationScreen(context, existing: loc),
                );
              },
            );
          },
          loading: () => const SavedLocationsListSkeleton(),
          error: (err, _) {
            final message = err is ApiException
                ? err.userMessage
                : 'Something went wrong';
            return Center(
              child: Padding(
                padding: EdgeInsets.all(context.paddingMedium),
                child: Text(
                  message,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge?.copyWith(color: colors.error),
                  textAlign: TextAlign.center,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
