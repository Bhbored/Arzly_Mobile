import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/listing_owned/motors/accessory_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/vehicle_type.dart';
import 'package:arzly/data/providers/new_listing/temp_vehicles_details/temp_vehicles_details_holder.dart';
import 'package:arzly/features/new_listing/shared/form/listing_form_section_divider.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/shared/cars_for_sale_style_dropdown_field.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/widgets/shared/vehicle_condition_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VehicleAccessoriesStep1Body extends ConsumerStatefulWidget {
  const VehicleAccessoriesStep1Body({
    super.key,
    required this.formKey,
    required this.requireStepFieldErrors,
  });

  final GlobalKey<FormState> formKey;
  final bool requireStepFieldErrors;

  @override
  ConsumerState<VehicleAccessoriesStep1Body> createState() =>
      _VehicleAccessoriesStep1BodyState();
}

class _VehicleAccessoriesStep1BodyState
    extends ConsumerState<VehicleAccessoriesStep1Body> {
  static const Object _fieldsResetKey = 0;

  @override
  Widget build(BuildContext context) {
    final veh = ref.watch(tempVehiclesDetailsHolderProvider);
    final scheme = Theme.of(context).colorScheme;
    final pageBg = scheme.surfaceContainerLowest;
    final menuRadius = BorderRadius.circular(context.borderRadiusMedium);

    final conditionError =
        widget.requireStepFieldErrors && veh.condition == null
            ? 'Choose condition'
            : null;

    return Form(
      key: widget.formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.paddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Accessory type',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: scheme.onSurface,
                  ),
            ),
            SizedBox(height: context.spaceSmall),
            CarsForSaleStyleDropdownField<AccessoryType>(
              fieldsResetKey: _fieldsResetKey,
              fieldSuffix: 'accessory_type',
              value: veh.accessoryType,
              onChanged: (v) => ref
                  .read(tempVehiclesDetailsHolderProvider.notifier)
                  .update((d) => d.copyWith(accessoryType: v)),
              hintText: 'Select accessory type',
              validationMessage: 'Choose accessory type',
              showRequiredErrors: widget.requireStepFieldErrors,
              pageBg: pageBg,
              scheme: scheme,
              menuRadius: menuRadius,
              items: [
                for (final t in AccessoryType.values)
                  DropdownMenuItem(value: t, child: Text(t.label)),
              ],
            ),
            const ListingFormSectionDivider(),
            Text(
              'Vehicle type',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: scheme.onSurface,
                  ),
            ),
            SizedBox(height: context.spaceSmall),
            CarsForSaleStyleDropdownField<VehicleType>(
              fieldsResetKey: _fieldsResetKey,
              fieldSuffix: 'accessories_vehicle_type',
              value: veh.vehicleType,
              onChanged: (v) => ref
                  .read(tempVehiclesDetailsHolderProvider.notifier)
                  .update((d) => d.copyWith(vehicleType: v)),
              hintText: 'Select vehicle type',
              validationMessage: 'Choose vehicle type',
              showRequiredErrors: widget.requireStepFieldErrors,
              pageBg: pageBg,
              scheme: scheme,
              menuRadius: menuRadius,
              items: [
                for (final t in VehicleType.values)
                  DropdownMenuItem(value: t, child: Text(t.label)),
              ],
            ),
            SizedBox(height: context.spaceSmall),
            Text(
              'Condition',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: scheme.onSurface,
                  ),
            ),
            SizedBox(height: context.spaceSmall),
            VehicleConditionField(
              value: veh.condition,
              onChanged: (v) {
                ref.read(tempVehiclesDetailsHolderProvider.notifier).update(
                      (d) => d.copyWith(condition: v),
                    );
              },
            ),
            if (conditionError != null) ...[
              SizedBox(height: context.spaceSmall * 0.5),
              Text(
                conditionError,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: scheme.error,
                    ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
