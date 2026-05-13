import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/listing_owned/motors/plate_digits.dart';
import 'package:arzly/data/providers/new_listing/temp_vehicles_details/temp_vehicles_details_holder.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/shared/cars_for_sale_style_dropdown_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NumberPlatesStep1Body extends ConsumerWidget {
  const NumberPlatesStep1Body({
    super.key,
    required this.requireFieldErrors,
  });

  final bool requireFieldErrors;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final veh = ref.watch(tempVehiclesDetailsHolderProvider);
    final scheme = Theme.of(context).colorScheme;
    final pageBg = scheme.surfaceContainerLowest;
    final menuRadius = BorderRadius.circular(context.borderRadiusMedium);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.paddingMedium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Number of digits',
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: scheme.onSurface,
                ),
          ),
          SizedBox(height: context.spaceSmall),
          CarsForSaleStyleDropdownField<PlateDigits>(
            fieldsResetKey: 0,
            fieldSuffix: 'plate_digits',
            value: veh.numberOfDigits,
            onChanged: (v) => ref
                .read(tempVehiclesDetailsHolderProvider.notifier)
                .update((d) => d.copyWith(numberOfDigits: v)),
            hintText: 'Select digit count',
            validationMessage: 'Choose number of digits',
            showRequiredErrors: requireFieldErrors,
            pageBg: pageBg,
            scheme: scheme,
            menuRadius: menuRadius,
            items: [
              for (final d in PlateDigits.values)
                DropdownMenuItem(
                  value: d,
                  child: Text(d.digitCountLabel),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
