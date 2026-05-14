import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/listing_owned/motors/boat_type.dart';
import 'package:arzly/data/providers/new_listing/temp_vehicles_details/temp_vehicles_details_holder.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/cars_for_sale/cars_for_sale_year_field.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/shared/cars_for_sale_style_dropdown_field.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/widgets/shared/vehicle_condition_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BoatsStep1Body extends ConsumerStatefulWidget {
  const BoatsStep1Body({
    super.key,
    required this.formKey,
    required this.requireStepFieldErrors,
  });

  final GlobalKey<FormState> formKey;
  final bool requireStepFieldErrors;

  @override
  ConsumerState<BoatsStep1Body> createState() => _BoatsStep1BodyState();
}

class _BoatsStep1BodyState extends ConsumerState<BoatsStep1Body> {
  static const Object _fieldsResetKey = 0;
  late final TextEditingController _yearController;

  @override
  void initState() {
    super.initState();
    final veh = ref.read(tempVehiclesDetailsHolderProvider);
    _yearController = TextEditingController(
      text: veh.year != null ? '${veh.year}' : '',
    );
    _yearController.addListener(() {
      ref.read(tempVehiclesDetailsHolderProvider.notifier).update(
            (d) => d.copyWith(year: parseCarYear(_yearController.text)),
          );
    });
  }

  @override
  void dispose() {
    _yearController.dispose();
    super.dispose();
  }

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
              'Type',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: scheme.onSurface,
                  ),
            ),
            SizedBox(height: context.spaceSmall),
            CarsForSaleStyleDropdownField<BoatType>(
              fieldsResetKey: _fieldsResetKey,
              fieldSuffix: 'boats_boat_type',
              value: veh.boatType,
              onChanged: (v) => ref
                  .read(tempVehiclesDetailsHolderProvider.notifier)
                  .update((d) => d.copyWith(boatType: v)),
              hintText: 'Select type',
              validationMessage: 'Choose type',
              showRequiredErrors: widget.requireStepFieldErrors,
              pageBg: pageBg,
              scheme: scheme,
              menuRadius: menuRadius,
              items: [
                for (final t in BoatType.values)
                  DropdownMenuItem(value: t, child: Text(t.label)),
              ],
            ),
            SizedBox(height: context.spaceSmall),
            Text(
              'Year',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: scheme.onSurface,
                  ),
            ),
            SizedBox(height: context.spaceSmall),
            CarsForSaleYearField(
              controller: _yearController,
              pageBg: pageBg,
              requiredField: widget.requireStepFieldErrors,
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
