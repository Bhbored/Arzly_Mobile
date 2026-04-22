import 'package:arzly/data/dtos/request/saved_listing/saved_listing_add_request.dart';
import 'package:arzly/data/dtos/request/saved_listing/saved_listing_update_request.dart';
import 'package:arzly/data/dtos/response/saved_listing/saved_listing_response.dart';
import 'package:arzly/domain/entities/saved_listing/saved_listing.dart';

extension SavedListingResponseMapper on SavedListingResponse {
  SavedListing toEntity() => SavedListing(
        id: id,
        userId: userId,
        listingId: listingId,
        savedAt: savedAt,
        deletedAt: deletedAt,
      );
}

extension SavedListingToAddRequestMapper on SavedListing {
  SavedListingAddRequest toAddRequest() => SavedListingAddRequest(
        userId: userId,
        listingId: listingId,
      );
}

extension SavedListingToUpdateRequestMapper on SavedListing {
  SavedListingUpdateRequest toUpdateRequest() => SavedListingUpdateRequest(
        id: id,
        deletedAt: deletedAt,
      );
}
