// models/place_result.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_result.freezed.dart';
part 'place_result.g.dart';

@freezed
sealed class PlaceResult with _$PlaceResult {
  const factory PlaceResult({
    required String placeId,
    required String mainText,
    required String secondaryText,
    required String fullText,
  }) = _PlaceResult;

  factory PlaceResult.fromJson(Map<String, dynamic> json) =>
      _$PlaceResultFromJson(json);
}
