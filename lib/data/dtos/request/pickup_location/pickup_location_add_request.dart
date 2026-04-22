import 'package:arzly/core/enums/location_label.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pickup_location_add_request.freezed.dart';
part 'pickup_location_add_request.g.dart';

@freezed
sealed class PickupLocationAddRequest with _$PickupLocationAddRequest {
  const factory PickupLocationAddRequest({
    @JsonKey(name: 'UserId') required String userId,
    @JsonKey(name: 'Label') required LocationLabel label,
    @JsonKey(name: 'Address') required String address,
    @JsonKey(name: 'Notes') String? notes,
    @JsonKey(name: 'Lat') required double lat,
    @JsonKey(name: 'Lon') required double lon,
    @JsonKey(name: 'IsDefault') required bool isDefault,
  }) = _PickupLocationAddRequest;

  factory PickupLocationAddRequest.fromJson(Map<String, dynamic> json) =>
      _$PickupLocationAddRequestFromJson(json);
}
