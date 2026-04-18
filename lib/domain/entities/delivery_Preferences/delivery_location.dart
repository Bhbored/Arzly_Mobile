import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_location.g.dart';
part 'delivery_location.freezed.dart';

@freezed
sealed class DeliveryLocation with _$DeliveryLocation {
  const factory DeliveryLocation({
    required String id,
    required String label,
    required String address,
    String? notes,
    required bool isDefault,
  }) = _DeliveryLocation;

  factory DeliveryLocation.fromJson(Map<String, dynamic> json) =>
      _$DeliveryLocationFromJson(json);
}
