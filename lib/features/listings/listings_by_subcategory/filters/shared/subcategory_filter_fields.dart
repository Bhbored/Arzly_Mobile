import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/features/listings/listings_by_subcategory/filters/shared/browse_enum_dropdown_field.dart';
import 'package:arzly/features/listings/listings_by_subcategory/filters/shared/browse_filter_shell.dart';
import 'package:arzly/features/new_listing/shared/inputs/car_picker_search_decoration.dart';
import 'package:arzly/features/new_listing/subscreens/real_estate/houses_for_sale/houses_for_sale_single_select_chips.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SubcategoryFilterChipsSection<T> extends StatelessWidget {
  const SubcategoryFilterChipsSection({
    super.key,
    required this.title,
    required this.values,
    required this.selected,
    required this.labelOf,
    required this.onChanged,
  });

  final String title;
  final List<T> values;
  final T? selected;
  final String Function(T value) labelOf;
  final ValueChanged<T?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FilterSectionTitle(title: title),
        SizedBox(height: context.spaceSmall),
        HousesForSaleSingleSelectChips<T>(
          values: values,
          selected: selected,
          labelOf: labelOf,
          onChanged: onChanged,
        ),
      ],
    );
  }
}

class SubcategoryFilterDropdownSection<T extends Object> extends StatelessWidget {
  const SubcategoryFilterDropdownSection({
    super.key,
    required this.title,
    required this.resetKey,
    required this.fieldSuffix,
    required this.value,
    required this.hintText,
    required this.values,
    required this.labelBuilder,
    required this.onChanged,
  });

  final String title;
  final Object? resetKey;
  final String fieldSuffix;
  final T? value;
  final String hintText;
  final List<T> values;
  final String Function(T value) labelBuilder;
  final ValueChanged<T?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FilterSectionTitle(title: title),
        SizedBox(height: context.spaceSmall),
        BrowseEnumDropdownField<T>(
          resetKey: resetKey,
          fieldSuffix: fieldSuffix,
          value: value,
          hintText: hintText,
          values: values,
          labelBuilder: labelBuilder,
          onChanged: onChanged,
        ),
      ],
    );
  }
}

class SubcategoryFilterTextFieldSection extends StatelessWidget {
  const SubcategoryFilterTextFieldSection({
    super.key,
    required this.title,
    required this.controller,
    required this.hintText,
    this.keyboardType,
    this.inputFormatters,
  });

  final String title;
  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final decoration = carForSaleVersionFieldDecoration(
      context,
      colors.surface,
      colors,
      hintText: hintText,
    ).copyWith(isDense: true);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FilterSectionTitle(title: title),
        SizedBox(height: context.spaceSmall),
        TextField(
          controller: controller,
          keyboardType: keyboardType,
          inputFormatters: inputFormatters,
          decoration: decoration,
        ),
      ],
    );
  }
}

class SubcategoryFilterEquippedSection extends StatelessWidget {
  const SubcategoryFilterEquippedSection({
    super.key,
    required this.value,
    required this.onChanged,
  });

  final bool? value;
  final ValueChanged<bool?> onChanged;

  @override
  Widget build(BuildContext context) {
    return SubcategoryFilterChipsSection<_EquippedFilterOption>(
      title: 'Equipped',
      values: _EquippedFilterOption.values,
      selected: _EquippedFilterOption.fromBool(value),
      labelOf: (v) => v.label,
      onChanged: (v) => onChanged(v?.boolValue),
    );
  }
}

enum _EquippedFilterOption {
  any,
  equipped,
  notEquipped;

  String get label => switch (this) {
        _EquippedFilterOption.any => 'Any',
        _EquippedFilterOption.equipped => 'Equipped',
        _EquippedFilterOption.notEquipped => 'Not equipped',
      };

  bool? get boolValue => switch (this) {
        _EquippedFilterOption.any => null,
        _EquippedFilterOption.equipped => true,
        _EquippedFilterOption.notEquipped => false,
      };

  static _EquippedFilterOption? fromBool(bool? value) => switch (value) {
        null => _EquippedFilterOption.any,
        true => _EquippedFilterOption.equipped,
        false => _EquippedFilterOption.notEquipped,
      };
}

int? parseSubcategoryFilterBathrooms(String raw) {
  final v = raw.trim();
  if (v.isEmpty) return null;
  final i = int.tryParse(v);
  if (i == null || i < 0 || i > 13) return null;
  return i;
}

double? parseSubcategoryFilterSizeM2(String raw) {
  final v = raw.trim().replaceAll(',', '.');
  if (v.isEmpty) return null;
  final d = double.tryParse(v);
  if (d == null || d <= 0) return null;
  return d;
}
