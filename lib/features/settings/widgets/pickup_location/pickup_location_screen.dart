import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/data/providers/pickup_location/pickup_locations_provider.dart';
import 'package:arzly/domain/entities/pickup_location/pickup_location.dart';
import 'package:arzly/features/settings/widgets/pickup_location/pickup_location_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> openPickupLocationScreen(
  BuildContext context, {
  PickupLocation? existing,
}) async {
  final saved = await Navigator.of(context).push<bool>(
    MaterialPageRoute<bool>(
      builder: (ctx) => PickupLocationScreen(existing: existing),
    ),
  );
  if (!context.mounted || saved != true) return;
  ScaffoldMessenger.of(context).clearSnackBars();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.fromLTRB(
        context.paddingMedium,
        0,
        context.paddingMedium,
        context.bottomPadding + context.spaceSmall,
      ),
      showCloseIcon: true,
      content: Text(
        existing == null
            ? 'Pickup location saved.'
            : 'Pickup location updated.',
      ),
    ),
  );
}

class PickupLocationScreen extends ConsumerWidget {
  const PickupLocationScreen({super.key, this.existing});

  final PickupLocation? existing;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = Theme.of(context).colorScheme;
    final isEditing = existing != null;

    return Scaffold(
      backgroundColor: colors.surface,
      appBar: AppBar(
        backgroundColor: colors.surface,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(false),
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        titleSpacing: 0,
        title: Text(
          isEditing ? 'Edit pickup' : 'New pickup',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w700,
                color: colors.onSurface,
              ),
        ),
      ),
      body: SafeArea(
        child: PickupLocationForm(
          existing: existing,
          onSubmit: (location) async {
            final notifier = ref.read(pickupLocationsProvider.notifier);
            if (existing == null) {
              await notifier.add(location);
            } else {
              await notifier.submitUpdatedLocation(location);
            }
          },
        ),
      ),
    );
  }
}
