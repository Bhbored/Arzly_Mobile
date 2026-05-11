import 'package:arzly/core/enums/listing_owned/motors/car_type.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/car_picker_search_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const int kCarDoorsMin = 2;
const int kCarDoorsMax = 5;

String? validateCarNumberOfDoors(
  String? raw, {
  CarType? carType,
  bool requiredField = false,
}) {
  final s = raw?.trim() ?? '';
  if (s.isEmpty) {
    return requiredField ? 'Enter number of doors' : null;
  }
  final doors = int.tryParse(s);
  if (doors == null) {
    return 'Use whole numbers only';
  }
  if (doors < kCarDoorsMin) {
    return 'Number of doors must be at least $kCarDoorsMin';
  }
  if (doors > kCarDoorsMax) {
    return 'Number of doors cannot exceed $kCarDoorsMax';
  }
  if (carType == null) {
    return null;
  }
  switch (carType) {
    case CarType.sportsCoupe:
    case CarType.convertible:
      if (doors > 3) {
        return 'Sports cars and convertibles usually have up to 3 doors';
      }
    case CarType.pickup:
      if (doors > 4) {
        return 'Pickups usually have up to 4 doors';
      }
    case CarType.vanBus:
    case CarType.mpv:
      if (doors < 4) {
        return 'MPVs and vans usually have at least 4 doors';
      }
    case CarType.sedan:
    case CarType.hatchback:
    case CarType.estate:
    case CarType.suv:
    case CarType.smallCityCar:
    case CarType.classicCar:
    case CarType.other:
      break;
  }
  return null;
}

int? parseCarNumberOfDoors(String raw, {CarType? carType}) {
  final s = raw.trim();
  if (s.isEmpty) return null;
  final doors = int.tryParse(s);
  if (doors == null || doors < kCarDoorsMin || doors > kCarDoorsMax) {
    return null;
  }
  if (validateCarNumberOfDoors(s, carType: carType) != null) {
    return null;
  }
  return doors;
}

class CarsForSaleNumberOfDoorsField extends StatelessWidget {
  const CarsForSaleNumberOfDoorsField({
    super.key,
    required this.fieldKey,
    required this.controller,
    required this.pageBg,
    required this.carType,
    this.requiredField = false,
  });

  final Key fieldKey;
  final TextEditingController controller;
  final Color pageBg;
  final CarType? carType;
  final bool requiredField;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return TextFormField(
      key: fieldKey,
      controller: controller,
      maxLines: 1,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(1),
      ],
      validator: (v) => validateCarNumberOfDoors(
        v,
        carType: carType,
        requiredField: requiredField,
      ),
      decoration: carForSaleVersionFieldDecoration(
        context,
        pageBg,
        scheme,
        hintText: 'Enter number of doors e.g. 4',
      ).copyWith(isDense: true),
    );
  }
}
