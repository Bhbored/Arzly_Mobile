import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/listing_owned/motors/plate_digits.dart';
import 'package:arzly/data/providers/new_listing/temp_vehicles_details/temp_vehicles_details_holder.dart';
import 'package:arzly/features/new_listing/shared/inputs/car_picker_search_decoration.dart';
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
    final decoration = carForSaleVersionFieldDecoration(
      context,
      pageBg,
      scheme,
      hintText: '',
    ).copyWith(isDense: true);

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
          DropdownButtonFormField<PlateDigits>(
            key: ValueKey(veh.numberOfDigits),
            initialValue: veh.numberOfDigits,
            decoration: decoration.copyWith(
              hintText: 'Select digit count',
            ),
            items: [
              for (final d in PlateDigits.values)
                DropdownMenuItem(
                  value: d,
                  child: Text(d.digitCountLabel),
                ),
            ],
            onChanged: (v) => ref
                .read(tempVehiclesDetailsHolderProvider.notifier)
                .update((d) => d.copyWith(numberOfDigits: v)),
            validator: (value) {
              if (!requireFieldErrors) return null;
              if (value == null) return 'Choose number of digits';
              return null;
            },
          ),
        ],
      ),
    );
  }
}
