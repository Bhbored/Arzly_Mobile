import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_listing_add_request.freezed.dart';
part 'saved_listing_add_request.g.dart';

@freezed
sealed class SavedListingAddRequest with _$SavedListingAddRequest {
  const factory SavedListingAddRequest({
    @JsonKey(name: 'UserId') required String userId,
    @JsonKey(name: 'ListingId') required String listingId,
  }) = _SavedListingAddRequest;

  factory SavedListingAddRequest.fromJson(Map<String, dynamic> json) =>
      _$SavedListingAddRequestFromJson(json);
}
