import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/data/providers/pickup_location/pickup_locations_provider.dart';
import 'package:arzly/domain/entities/pickup_location/pickup_location.dart';
import 'package:arzly/features/settings/widgets/pickup_location/pickup_location_form.dart';
import 'package:arzly/features/settings/widgets/pickup_location/pickup_location_label_display.dart';
import 'package:arzly/features/settings/widgets/pickup_location/pickup_location_route_result.dart';
import 'package:arzly/features/shared/snack_bar/app_snack_bar.dart';
import 'package:arzly/features/shared/snack_bar/app_snack_bar_variant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> openPickupLocationScreen(
  BuildContext context, {
  PickupLocation? existing,
}) async {
  final result = await Navigator.of(context).push<String?>(
    MaterialPageRoute<String?>(
      builder: (ctx) => PickupLocationScreen(existing: existing),
    ),
  );
  if (!context.mounted || result == null) return;
  switch (result) {
    case PickupLocationRouteResult.saved:
      AppSnackBar.show(
        context,
        message: 'Pickup location saved.',
        variant: AppSnackBarVariant.success,
      );
      break;
    case PickupLocationRouteResult.updated:
      AppSnackBar.show(
        context,
        message: 'Pickup location updated.',
        variant: AppSnackBarVariant.success,
      );
      break;
    case PickupLocationRouteResult.deleted:
      AppSnackBar.show(
        context,
        message: 'Pickup location removed.',
        variant: AppSnackBarVariant.success,
      );
      break;
    default:
      break;
  }
}

enum _PickupLocationOverflowAction { share, delete }

class PickupLocationScreen extends ConsumerStatefulWidget {
  const PickupLocationScreen({super.key, this.existing});

  final PickupLocation? existing;

  @override
  ConsumerState<PickupLocationScreen> createState() =>
      _PickupLocationScreenState();
}

class _PickupLocationScreenState extends ConsumerState<PickupLocationScreen> {
  bool _isDeleting = false;

  void _sharePickupLocation() {}

  Future<void> _confirmDelete() async {
    final loc = widget.existing;
    if (loc == null || !mounted) return;
    final colors = Theme.of(context).colorScheme;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          icon: Icon(
            Icons.warning_amber_rounded,
            color: colors.error,
            size: 32,
          ),
          title: const Text('Delete pickup location?'),
          content: Text(
            'This will remove ${pickupLabelDisplay(loc.label)} from your saved spots. You can add it again later.',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: colors.onSurfaceVariant,
              height: 1.4,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(ctx).pop(false),
              child: const Text('Cancel'),
            ),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: colors.error,
                foregroundColor: colors.onError,
              ),
              onPressed: () => Navigator.of(ctx).pop(true),
              child: const Text('Delete'),
            ),
          ],
        );
      },
    );
    if (confirmed != true || !mounted) return;
    setState(() => _isDeleting = true);
    try {
      await ref.read(pickupLocationsProvider.notifier).delete(loc.id);
      if (mounted) {
        Navigator.of(context).pop(PickupLocationRouteResult.deleted);
      }
    } catch (_) {
      if (mounted) {
        setState(() => _isDeleting = false);
        AppSnackBar.show(
          context,
          message: 'Could not delete location. Try again.',
          variant: AppSnackBarVariant.error,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final isEditing = widget.existing != null;

    return Scaffold(
      backgroundColor: colors.surface,
      appBar: AppBar(
        backgroundColor: colors.surface,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          onPressed: _isDeleting
              ? null
              : () => Navigator.of(context).pop(),
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
        actions: [
          if (isEditing)
            PopupMenuButton<_PickupLocationOverflowAction>(
              enabled: !_isDeleting,
              tooltip: 'More options',
              offset: Offset(0, context.spaceSmall + 36),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  context.borderRadiusMedium + 4,
                ),
              ),
              color: colors.surfaceContainerHigh,
              elevation: 4,
              shadowColor: colors.shadow.withValues(alpha: 0.2),
              icon: Icon(Icons.more_vert_rounded, color: colors.onSurface),
              onSelected: (action) async {
                switch (action) {
                  case _PickupLocationOverflowAction.share:
                    _sharePickupLocation();
                  case _PickupLocationOverflowAction.delete:
                    await _confirmDelete();
                }
              },
              itemBuilder: (ctx) => [
                PopupMenuItem(
                  value: _PickupLocationOverflowAction.share,
                  child: Row(
                    children: [
                      Icon(
                        Icons.ios_share_rounded,
                        size: 22,
                        color: colors.primary,
                      ),
                      SizedBox(width: context.paddingSmall + 4),
                      Text(
                        'Share',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: _PickupLocationOverflowAction.delete,
                  child: Row(
                    children: [
                      Icon(
                        Icons.delete_outline_rounded,
                        size: 22,
                        color: colors.error,
                      ),
                      SizedBox(width: context.paddingSmall + 4),
                      Text(
                        'Delete',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: colors.error,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
        ],
      ),
      body: Stack(
        children: [
          SafeArea(
            child: PickupLocationForm(
              existing: widget.existing,
              onSubmit: (location) async {
                final notifier = ref.read(pickupLocationsProvider.notifier);
                if (widget.existing == null) {
                  await notifier.add(location);
                } else {
                  await notifier.submitUpdatedLocation(location);
                }
              },
            ),
          ),
          if (_isDeleting)
            Positioned.fill(
              child: AbsorbPointer(
                child: ColoredBox(
                  color: colors.scrim.withValues(alpha: 0.45),
                  child: Center(
                    child: CircularProgressIndicator(color: colors.primary),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
