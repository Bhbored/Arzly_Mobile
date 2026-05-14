import 'package:flutter/services.dart';

class HousesForSaleSizeM2InputFormatter extends TextInputFormatter {
  static const double maxM2 = 1000000;

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final raw = newValue.text;
    if (raw.isEmpty) return newValue;

    final normalized = raw.trim().replaceAll(',', '.');
    if (normalized == '.' || normalized == ',') {
      return newValue;
    }

    final trailingSep =
        normalized.endsWith('.') || normalized.endsWith(',');
    final forParse =
        trailingSep ? normalized.substring(0, normalized.length - 1) : normalized;

    if (forParse.isEmpty) return newValue;

    final d = double.tryParse(forParse);
    if (d == null) return oldValue;
    if (d < 0) return oldValue;
    if (d > maxM2) return oldValue;

    return newValue;
  }
}
