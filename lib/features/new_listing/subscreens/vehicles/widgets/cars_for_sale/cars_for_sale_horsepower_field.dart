import 'package:arzly/features/new_listing/subscreens/vehicles/car_picker_search_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const int kCarHorsepowerMin = 10;
const int kCarHorsepowerMax = 2000;

String? validateCarHorsepower(String? raw, {bool requiredField = false}) {
  final s = raw?.trim() ?? '';
  if (s.isEmpty) {
    return requiredField ? 'Enter horsepower' : null;
  }
  final n = int.tryParse(s);
  if (n == null) {
    return 'Use whole numbers only';
  }
  if (n < kCarHorsepowerMin) {
    return 'Horsepower must be at least $kCarHorsepowerMin';
  }
  if (n > kCarHorsepowerMax) {
    return 'Horsepower cannot exceed $kCarHorsepowerMax';
  }
  return null;
}

int? parseCarHorsepower(String raw) {
  final s = raw.trim();
  if (s.isEmpty) return null;
  final n = int.tryParse(s);
  if (n == null || n < kCarHorsepowerMin || n > kCarHorsepowerMax) {
    return null;
  }
  return n;
}

class CarsForSaleHorsepowerField extends StatelessWidget {
  const CarsForSaleHorsepowerField({
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
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(4),
      ],
      validator: (v) => validateCarHorsepower(v, requiredField: requiredField),
      decoration: carForSaleVersionFieldDecoration(
        context,
        pageBg,
        scheme,
        hintText: 'Enter horsepower e.g. 150',
      ).copyWith(isDense: true),
    );
  }
}
