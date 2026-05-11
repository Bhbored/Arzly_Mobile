import 'package:arzly/features/new_listing/subscreens/vehicles/car_picker_search_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const int kCarOwnersMin = 1;
const int kCarOwnersMax = 10;

String? validateCarNumberOfOwners(String? raw, {bool requiredField = false}) {
  final s = raw?.trim() ?? '';
  if (s.isEmpty) {
    return requiredField ? 'Enter number of owners' : null;
  }
  final owners = int.tryParse(s);
  if (owners == null) {
    return 'Use whole numbers only';
  }
  if (owners < kCarOwnersMin) {
    return 'Number of owners must be at least $kCarOwnersMin';
  }
  if (owners > kCarOwnersMax) {
    return 'Number of owners cannot exceed $kCarOwnersMax';
  }
  return null;
}

int? parseCarNumberOfOwners(String raw) {
  final s = raw.trim();
  if (s.isEmpty) return null;
  final owners = int.tryParse(s);
  if (owners == null || owners < kCarOwnersMin || owners > kCarOwnersMax) {
    return null;
  }
  return owners;
}

class CarsForSaleNumberOfOwnersField extends StatelessWidget {
  const CarsForSaleNumberOfOwnersField({
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
        LengthLimitingTextInputFormatter(2),
      ],
      validator: (v) =>
          validateCarNumberOfOwners(v, requiredField: requiredField),
      decoration: carForSaleVersionFieldDecoration(
        context,
        pageBg,
        scheme,
        hintText: 'Enter number of owners e.g. 1',
      ).copyWith(isDense: true),
    );
  }
}
