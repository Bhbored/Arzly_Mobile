import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_listing_response.freezed.dart';
part 'saved_listing_response.g.dart';

@freezed
sealed class SavedListingResponse with _$SavedListingResponse {
  const factory SavedListingResponse({
    @JsonKey(name: 'Id') required String id,
    @JsonKey(name: 'UserId') required String userId,
    @JsonKey(name: 'ListingId') required String listingId,
    @JsonKey(name: 'SavedAt') required DateTime savedAt,
    @JsonKey(name: 'DeletedAt') DateTime? deletedAt,
  }) = _SavedListingResponse;

  factory SavedListingResponse.fromJson(Map<String, dynamic> json) =>
      _$SavedListingResponseFromJson(json);
}
