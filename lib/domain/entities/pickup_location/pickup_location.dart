import 'package:arzly/core/enums/listing/location_label.dart';
import 'package:arzly/core/enums/location_preset.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'pickup_location.freezed.dart';

@freezed
sealed class PickupLocation with _$PickupLocation {
  const factory PickupLocation({
    required String id,
    required String userId,
    required LocationLabel label,
    required String address,
    required LocationPreset locationPreset,
    String? notes,
    required double lat,
    required double lon,
    required bool isDefault,
  }) = _PickupLocation;
}
