import 'package:arzly/core/enums/listing/location_label.dart';
import 'package:arzly/core/enums/location_preset.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pickup_location_update_request.freezed.dart';
part 'pickup_location_update_request.g.dart';

@freezed
sealed class PickupLocationUpdateRequest with _$PickupLocationUpdateRequest {
  const factory PickupLocationUpdateRequest({
    @JsonKey(name: 'Id') required String id,
    @JsonKey(name: 'Label') required LocationLabel label,
    @JsonKey(name: 'Address') required String address,
    @JsonKey(name: 'LocationPreset') required LocationPreset locationPreset,
    @JsonKey(name: 'Notes') String? notes,
    @JsonKey(name: 'Lat') required double lat,
    @JsonKey(name: 'Lon') required double lon,
    @JsonKey(name: 'IsDefault') required bool isDefault,
  }) = _PickupLocationUpdateRequest;

  factory PickupLocationUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$PickupLocationUpdateRequestFromJson(json);
}
