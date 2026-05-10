import 'package:arzly/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

InputDecoration carPickerSearchDecoration(
  BuildContext context,
  Color fillColor,
  ColorScheme scheme, {
  required String hintText,
}) {
  final radius = BorderRadius.circular(context.borderRadiusMedium);
  final shape = OutlineInputBorder(
    borderRadius: radius,
    borderSide: BorderSide.none,
  );
  return InputDecoration(
    hintText: hintText,
    prefixIcon: Icon(Icons.search_rounded, color: scheme.primary),
    filled: true,
    fillColor: fillColor,
    border: shape,
    enabledBorder: shape,
    focusedBorder: shape,
    disabledBorder: shape,
    errorBorder: shape,
    focusedErrorBorder: shape,
    contentPadding: EdgeInsets.symmetric(
      horizontal: context.paddingMedium,
      vertical: context.spaceMedium,
    ),
  );
}
