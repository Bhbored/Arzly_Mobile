import 'package:arzly/features/new_listing/subscreens/vehicles/car_picker_search_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const int kCarYearMin = 1900;

int carYearMaxInclusive() => DateTime.now().year + 1;

String? validateCarYear(String? raw, int maxYear) {
  final s = raw?.trim() ?? '';
  if (s.isEmpty) return null;
  final n = int.tryParse(s);
  if (n == null) {
    return 'Use numbers only';
  }
  if (n < kCarYearMin) {
    return 'Year must be $kCarYearMin or later';
  }
  if (n > maxYear) {
    return 'Year cannot be after $maxYear';
  }
  return null;
}

int? parseCarYear(String raw) {
  final s = raw.trim();
  if (s.isEmpty) return null;
  final n = int.tryParse(s);
  final maxY = carYearMaxInclusive();
  if (n == null || n < kCarYearMin || n > maxY) return null;
  return n;
}

class CarsForSaleYearField extends StatelessWidget {
  const CarsForSaleYearField({
    super.key,
    required this.controller,
    required this.pageBg,
  });

  final TextEditingController controller;
  final Color pageBg;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final maxYear = carYearMaxInclusive();
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
      validator: (v) => validateCarYear(v, maxYear),
      decoration: carForSaleVersionFieldDecoration(
        context,
        pageBg,
        scheme,
        hintText: 'enter year',
      ),
    );
  }
}
