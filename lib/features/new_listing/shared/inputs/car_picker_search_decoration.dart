import 'package:arzly/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

InputDecoration carPickerFieldDecoration(
  BuildContext context,
  Color fillColor,
  ColorScheme scheme, {
  required String hintText,
  Widget? prefixIcon,
}) {
  final radius = BorderRadius.circular(context.borderRadiusMedium);
  final shape = OutlineInputBorder(
    borderRadius: radius,
    borderSide: BorderSide.none,
  );
  return InputDecoration(
    hintText: hintText,
    prefixIcon: prefixIcon,
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

InputDecoration carPickerSearchDecoration(
  BuildContext context,
  Color fillColor,
  ColorScheme scheme, {
  required String hintText,
}) => carPickerFieldDecoration(
  context,
  fillColor,
  scheme,
  hintText: hintText,
  prefixIcon: Icon(Icons.search_rounded, color: scheme.primary),
);

InputDecoration carForSaleVersionFieldDecoration(
  BuildContext context,
  Color fillColor,
  ColorScheme scheme, {
  required String hintText,
}) {
  final radius = BorderRadius.circular(5);
  final inactiveColor = scheme.brightness == Brightness.light
      ? Colors.black
      : scheme.outline;
  final idle = OutlineInputBorder(
    borderRadius: radius,
    borderSide: BorderSide(color: inactiveColor, width: 2),
  );
  final focused = OutlineInputBorder(
    borderRadius: radius,
    borderSide: BorderSide(color: scheme.primary, width: 2),
  );
  final errorOutline = OutlineInputBorder(
    borderRadius: radius,
    borderSide: BorderSide(color: scheme.error, width: 2),
  );
  return InputDecoration(
    hintText: hintText,
    filled: true,
    fillColor: fillColor,
    border: idle,
    enabledBorder: idle,
    focusedBorder: focused,
    disabledBorder: idle,
    errorBorder: errorOutline,
    focusedErrorBorder: errorOutline,
    contentPadding: EdgeInsets.symmetric(
      horizontal: context.paddingMedium,
      vertical: context.spaceSmall * 1.35,
    ),
  );
}
