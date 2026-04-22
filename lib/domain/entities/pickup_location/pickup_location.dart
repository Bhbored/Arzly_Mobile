import 'package:arzly/core/enums/location_label.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'pickup_location.freezed.dart';

@freezed
sealed class PickupLocation with _$PickupLocation {
  const factory PickupLocation({
    required String id,
    required String userId,
    required LocationLabel label,
    required String address,
    String? notes,
    required double lat,
    required double lon,
    required bool isDefault,
  }) = _PickupLocation;
}