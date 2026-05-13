import 'package:arzly/features/new_listing/shared/inputs/car_picker_search_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const double kCarFuelConsumptionMin = 2;
const double kCarFuelConsumptionMax = 20;

final RegExp _carFuelConsumptionInputPattern = RegExp(r'^\d*\.?\d*$');

String? validateCarFuelConsumption(String? raw, {bool requiredField = false}) {
  final s = raw?.trim() ?? '';
  if (s.isEmpty) {
    return requiredField ? 'Enter consumption' : null;
  }
  if (s == '.') {
    return 'Enter a valid number';
  }
  final n = double.tryParse(s);
  if (n == null) {
    return 'Enter a valid number';
  }
  if (n < kCarFuelConsumptionMin) {
    return 'Consumption must be at least $kCarFuelConsumptionMin';
  }
  if (n > kCarFuelConsumptionMax) {
    return 'Consumption cannot exceed $kCarFuelConsumptionMax';
  }
  return null;
}

double? parseCarFuelConsumption(String raw) {
  final s = raw.trim();
  if (s.isEmpty || s == '.') return null;
  final n = double.tryParse(s);
  if (n == null ||
      n < kCarFuelConsumptionMin ||
      n > kCarFuelConsumptionMax) {
    return null;
  }
  return n;
}

class CarsForSaleFuelConsumptionField extends StatelessWidget {
  const CarsForSaleFuelConsumptionField({
    super.key,
    required this.controller,
    required this.pageBg,
    this.requiredField = false,
  });

  final TextEditingController controller;
  final Color pageBg;
  final bool requiredField;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return TextFormField(
      controller: controller,
      maxLines: 1,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      textInputAction: TextInputAction.done,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      inputFormatters: [
        FilteringTextInputFormatter.allow(_carFuelConsumptionInputPattern),
        LengthLimitingTextInputFormatter(5),
      ],
      validator: (v) =>
          validateCarFuelConsumption(v, requiredField: requiredField),
      decoration: carForSaleVersionFieldDecoration(
        context,
        pageBg,
        scheme,
        hintText: 'Enter consumption e.g. 6.5',
      ).copyWith(isDense: true),
    );
  }
}
