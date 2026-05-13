import 'package:arzly/features/new_listing/shared/inputs/car_picker_search_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const int kCarKilometersMax = 9999999;

String? validateCarKilometers(String? raw, {bool requiredField = false}) {
  final s = raw?.trim() ?? '';
  if (s.isEmpty) {
    return requiredField ? 'Enter kilometers' : null;
  }
  final n = int.tryParse(s);
  if (n == null) {
    return 'Use numbers only';
  }
  if (n < 0) {
    return 'Kilometers cannot be negative';
  }
  if (n > kCarKilometersMax) {
    return 'Maximum is 9,999,999 km';
  }
  return null;
}

int? parseCarKilometers(String raw) {
  final s = raw.trim();
  if (s.isEmpty) return null;
  final n = int.tryParse(s);
  if (n == null || n < 0 || n > kCarKilometersMax) return null;
  return n;
}

class CarsForSaleKilometersField extends StatelessWidget {
  const CarsForSaleKilometersField({
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
        LengthLimitingTextInputFormatter(7),
      ],
      validator: (v) => validateCarKilometers(v, requiredField: requiredField),
      decoration: carForSaleVersionFieldDecoration(
        context,
        pageBg,
        scheme,
        hintText: 'Enter kilometers e.g. 85,000',
      ).copyWith(isDense: true),
    );
  }
}
