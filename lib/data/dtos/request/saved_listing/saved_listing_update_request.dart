import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_listing_update_request.freezed.dart';
part 'saved_listing_update_request.g.dart';

@freezed
sealed class SavedListingUpdateRequest with _$SavedListingUpdateRequest {
  const factory SavedListingUpdateRequest({
    @JsonKey(name: 'Id') required String id,
    @JsonKey(name: 'DeletedAt') DateTime? deletedAt,
  }) = _SavedListingUpdateRequest;

  factory SavedListingUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$SavedListingUpdateRequestFromJson(json);
}
