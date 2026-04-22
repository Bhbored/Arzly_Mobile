import 'package:freezed_annotation/freezed_annotation.dart';
part 'saved_listing.freezed.dart';

@freezed
sealed class SavedListing with _$SavedListing {
  const factory SavedListing({
    required String id,
    required String userId,
    required String listingId,
    required DateTime savedAt,
    DateTime? deletedAt,
  }) = _SavedListing;
}