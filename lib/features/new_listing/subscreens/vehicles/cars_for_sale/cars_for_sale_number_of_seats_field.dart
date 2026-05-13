import 'package:arzly/core/enums/listing_owned/motors/car_type.dart';
import 'package:arzly/features/new_listing/shared/inputs/car_picker_search_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const int kCarSeatsMin = 2;
const int kCarSeatsMax = 9;

String? validateCarNumberOfSeats(
  String? raw, {
  CarType? carType,
  bool requiredField = false,
}) {
  final s = raw?.trim() ?? '';
  if (s.isEmpty) {
    return requiredField ? 'Enter number of seats' : null;
  }
  final seats = int.tryParse(s);
  if (seats == null) {
    return 'Use whole numbers only';
  }
  if (seats < kCarSeatsMin) {
    return 'Number of seats must be at least $kCarSeatsMin';
  }
  if (seats > kCarSeatsMax) {
    return 'Number of seats cannot exceed $kCarSeatsMax';
  }
  if (carType == null) {
    return null;
  }
  switch (carType) {
    case CarType.sportsCoupe:
    case CarType.convertible:
      if (seats > 4) {
        return 'Sports cars and convertibles usually have up to 4 seats';
      }
    case CarType.smallCityCar:
      if (seats > 5) {
        return 'Small city cars usually have up to 5 seats';
      }
    case CarType.pickup:
      if (seats > 5) {
        return 'Pickups usually have up to 5 seats';
      }
    case CarType.vanBus:
    case CarType.mpv:
      if (seats < 5) {
        return 'MPVs and vans usually have at least 5 seats';
      }
    case CarType.sedan:
    case CarType.hatchback:
    case CarType.estate:
    case CarType.suv:
    case CarType.classicCar:
    case CarType.other:
      break;
  }
  return null;
}

int? parseCarNumberOfSeats(String raw, {CarType? carType}) {
  final s = raw.trim();
  if (s.isEmpty) return null;
  final seats = int.tryParse(s);
  if (seats == null || seats < kCarSeatsMin || seats > kCarSeatsMax) {
    return null;
  }
  if (validateCarNumberOfSeats(s, carType: carType) != null) {
    return null;
  }
  return seats;
}

class CarsForSaleNumberOfSeatsField extends StatelessWidget {
  const CarsForSaleNumberOfSeatsField({
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
      validator: (v) => validateCarNumberOfSeats(
        v,
        carType: carType,
        requiredField: requiredField,
      ),
      decoration: carForSaleVersionFieldDecoration(
        context,
        pageBg,
        scheme,
        hintText: 'Enter number of seats e.g. 5',
      ).copyWith(isDense: true),
    );
  }
}
