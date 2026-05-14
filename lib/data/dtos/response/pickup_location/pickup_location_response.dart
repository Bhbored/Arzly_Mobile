import 'package:arzly/core/enums/listing/location_label.dart';
import 'package:arzly/core/enums/location_preset.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pickup_location_response.freezed.dart';
part 'pickup_location_response.g.dart';

@freezed
sealed class PickupLocationResponse with _$PickupLocationResponse {
  const factory PickupLocationResponse({
    @JsonKey(name: 'Id') required String id,
    @JsonKey(name: 'UserId') required String userId,
    @JsonKey(name: 'Label') required LocationLabel label,
    @JsonKey(name: 'LocationPreset') required LocationPreset locationPreset,
    @JsonKey(name: 'Address') required String address,
    @JsonKey(name: 'Notes') String? notes,
    @JsonKey(name: 'Lat') required double lat,
    @JsonKey(name: 'Lon') required double lon,
    @JsonKey(name: 'IsDefault') required bool isDefault,
  }) = _PickupLocationResponse;

  factory PickupLocationResponse.fromJson(Map<String, dynamic> json) =>
      _$PickupLocationResponseFromJson(json);
}
