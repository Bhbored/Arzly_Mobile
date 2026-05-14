import 'package:arzly/data/dtos/request/pickup_location/pickup_location_add_request.dart';
import 'package:arzly/data/dtos/request/pickup_location/pickup_location_update_request.dart';
import 'package:arzly/data/dtos/response/pickup_location/pickup_location_response.dart';
import 'package:arzly/domain/entities/pickup_location/pickup_location.dart';

extension PickupLocationResponseMapper on PickupLocationResponse {
  PickupLocation toEntity() => PickupLocation(
    id: id,
    userId: userId,
    label: label,
    address: address,
    notes: notes,
    lat: lat,
    lon: lon,
    isDefault: isDefault,
    locationPreset: locationPreset,
  );
}

extension PickupLocationToAddRequestMapper on PickupLocation {
  PickupLocationAddRequest toAddRequest() => PickupLocationAddRequest(
    userId: userId,
    label: label,
    address: address,
    notes: notes,
    lat: lat,
    lon: lon,
    isDefault: isDefault,
    locationPreset: locationPreset,
  );
}

extension PickupLocationToUpdateRequestMapper on PickupLocation {
  PickupLocationUpdateRequest toUpdateRequest() => PickupLocationUpdateRequest(
    id: id,
    label: label,
    address: address,
    notes: notes,
    lat: lat,
    lon: lon,
    isDefault: isDefault,
    locationPreset: locationPreset,
  );
}
