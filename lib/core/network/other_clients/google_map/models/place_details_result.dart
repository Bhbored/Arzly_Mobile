// models/place_details_result.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_details_result.freezed.dart';
part 'place_details_result.g.dart';

@freezed
sealed class PlaceDetailsResult with _$PlaceDetailsResult {
  const factory PlaceDetailsResult({
    required double latitude,
    required double longitude,
    required String displayName,
    required String formattedAddress,
    required String staticMapUrl,
  }) = _PlaceDetailsResult;

  factory PlaceDetailsResult.fromJson(Map<String, dynamic> json) =>
      _$PlaceDetailsResultFromJson(json);
}
