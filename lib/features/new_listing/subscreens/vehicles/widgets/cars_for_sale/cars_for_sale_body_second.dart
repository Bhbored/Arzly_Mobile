import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/listing_owned/motors/fuel_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/transmission_type.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/car_picker_search_decoration.dart';
import 'package:flutter/material.dart';

class CarsForSaleBodySecond extends StatelessWidget {
  const CarsForSaleBodySecond({
    super.key,
    required this.formKey,
    required this.fieldsResetKey,
    required this.selectedFuelType,
    required this.onFuelTypeChanged,
    required this.selectedTransmissionType,
    required this.onTransmissionTypeChanged,
    required this.onPrevious,
    required this.onPostNow,
  });

  final GlobalKey<FormState> formKey;
  final Object? fieldsResetKey;
  final FuelType? selectedFuelType;
  final ValueChanged<FuelType?> onFuelTypeChanged;
  final TransmissionType? selectedTransmissionType;
  final ValueChanged<TransmissionType?> onTransmissionTypeChanged;
  final VoidCallback onPrevious;
  final VoidCallback onPostNow;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final pageBg = scheme.surfaceContainerLowest;
    final menuRadius = BorderRadius.circular(context.borderRadiusMedium);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.paddingMedium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fuel type',
                          style: Theme.of(context).textTheme.titleSmall
                              ?.copyWith(
                                fontWeight: FontWeight.w700,
                                color: scheme.onSurface,
                              ),
                        ),
                        SizedBox(height: context.spaceSmall),
                        _CarsForSaleDropdownField<FuelType>(
                          fieldsResetKey: fieldsResetKey,
                          fieldSuffix: 'fuel',
                          value: selectedFuelType,
                          onChanged: onFuelTypeChanged,
                          hintText: 'Choose fuel type',
                          validationMessage: 'Choose fuel type',
                          pageBg: pageBg,
                          scheme: scheme,
                          menuRadius: menuRadius,
                          items: [
                            for (final t in FuelType.values)
                              DropdownMenuItem(value: t, child: Text(t.label)),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: context.spaceSmall),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Transmission',
                          style: Theme.of(context).textTheme.titleSmall
                              ?.copyWith(
                                fontWeight: FontWeight.w700,
                                color: scheme.onSurface,
                              ),
                        ),
                        SizedBox(height: context.spaceSmall),
                        _CarsForSaleDropdownField<TransmissionType>(
                          fieldsResetKey: fieldsResetKey,
                          fieldSuffix: 'transmission',
                          value: selectedTransmissionType,
                          onChanged: onTransmissionTypeChanged,
                          hintText: 'Choose transmission',
                          validationMessage: 'Choose transmission',
                          pageBg: pageBg,
                          scheme: scheme,
                          menuRadius: menuRadius,
                          items: [
                            for (final t in TransmissionType.values)
                              DropdownMenuItem(value: t, child: Text(t.label)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              OutlinedButton(
                onPressed: onPrevious,
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(
                    context.screenWidth * 0.35,
                    context.screenHeight * 0.05,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: context.paddingMedium * 1.02,
                    vertical: context.spaceSmall,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  side: BorderSide(
                    color: scheme.outline.withValues(alpha: 0.85),
                  ),
                  foregroundColor: scheme.onSurface,
                ),
                child: Text(
                  'Previous',
                  style: Theme.of(
                    context,
                  ).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(width: context.paddingMedium * 1.15),
              FilledButton(
                onPressed: onPostNow,
                style: FilledButton.styleFrom(
                  minimumSize: Size(
                    context.screenWidth * 0.35,
                    context.screenHeight * 0.05,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: context.paddingMedium * 1.02,
                    vertical: context.spaceSmall,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  elevation: 0,
                ),
                child: Text(
                  'Post now',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: scheme.onPrimary,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: context.spaceMedium),
        ],
      ),
    );
  }
}

class _CarsForSaleDropdownField<T extends Object> extends StatelessWidget {
  const _CarsForSaleDropdownField({
    required this.fieldsResetKey,
    required this.fieldSuffix,
    required this.value,
    required this.onChanged,
    required this.hintText,
    required this.validationMessage,
    required this.pageBg,
    required this.scheme,
    required this.menuRadius,
    required this.items,
  });

  final Object? fieldsResetKey;
  final String fieldSuffix;
  final T? value;
  final ValueChanged<T?> onChanged;
  final String hintText;
  final String validationMessage;
  final Color pageBg;
  final ColorScheme scheme;
  final BorderRadius menuRadius;
  final List<DropdownMenuItem<T>> items;

  @override
  Widget build(BuildContext context) {
    final hintStyle = Theme.of(context).textTheme.bodyMedium?.copyWith(
      fontWeight: FontWeight.w500,
      color: scheme.onSurfaceVariant,
      height: 1.2,
    );
    final valueStyle = Theme.of(context).textTheme.bodyMedium?.copyWith(
      fontWeight: FontWeight.w600,
      color: scheme.onSurface,
      height: 1.2,
    );

    return FormField<T>(
      key: ValueKey(Object.hash(fieldsResetKey, fieldSuffix)),
      initialValue: value,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (v) => v == null ? validationMessage : null,
      builder: (state) {
        final baseDecoration = carForSaleVersionFieldDecoration(
          context,
          pageBg,
          scheme,
          hintText: hintText,
        );
        return InputDecorator(
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
                child: DropdownButton<T>(
                  padding: EdgeInsets.zero,
                  isExpanded: true,
                  borderRadius: menuRadius,
                  menuWidth: constraints.maxWidth,
                  style: valueStyle,
                  hint: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(hintText, style: hintStyle),
                  ),
                  value: state.value,
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: scheme.onSurfaceVariant,
                    size: 22,
                  ),
                  items: items,
                  onChanged: (v) {
                    state.didChange(v);
                    onChanged(v);
                  },
                ),
              );
            },
          ),
        );
      },
    );
  }
}
