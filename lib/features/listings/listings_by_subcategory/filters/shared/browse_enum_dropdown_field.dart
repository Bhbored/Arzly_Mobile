import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/shared/cars_for_sale_style_dropdown_field.dart';
import 'package:flutter/material.dart';

class BrowseEnumDropdownField<T extends Object> extends StatelessWidget {
  const BrowseEnumDropdownField({
    super.key,
    required this.resetKey,
    required this.fieldSuffix,
    required this.value,
    required this.onChanged,
    required this.hintText,
    required this.values,
    required this.labelBuilder,
  });

  final Object? resetKey;
  final String fieldSuffix;
  final T? value;
  final ValueChanged<T?> onChanged;
  final String hintText;
  final List<T> values;
  final String Function(T value) labelBuilder;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final pageBg = colors.surface;
    final menuRadius = BorderRadius.circular(context.borderRadiusMedium);

    return CarsForSaleStyleDropdownField<T>(
      fieldsResetKey: resetKey,
      fieldSuffix: fieldSuffix,
      value: value,
      onChanged: onChanged,
      hintText: hintText,
      validationMessage: '',
      showRequiredErrors: false,
      pageBg: pageBg,
      scheme: colors,
      menuRadius: menuRadius,
      items: values
          .map(
            (item) => DropdownMenuItem(
              value: item,
              child: Text(labelBuilder(item)),
            ),
          )
          .toList(),
    );
  }
}
