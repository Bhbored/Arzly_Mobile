import 'package:arzly/data/dtos/request/listing/listing_add_request.dart';
import 'package:arzly/data/dtos/request/listing/listing_update_request.dart';
import 'package:arzly/data/dtos/response/listing/listing_response.dart';
import 'package:arzly/domain/entities/listing/listing.dart';

extension ListingResponseMapper on ListingResponse {
  Listing toEntity() => Listing(
        id: id,
        title: title,
        description: description,
        price: price,
        status: status,
        primaryImageUrl: primaryImageUrl,
        imagesUrl: imagesUrl,
        createdAt: createdAt,
        updatedAt: updatedAt,
        ownerId: ownerId,
        categoryId: categoryId,
        subcategoryId: subcategoryId,
        subcategoryOptionsId: subcategoryOptionsId,
        pickupLocationId: pickupLocationId,
      );
}

extension ListingToAddRequestMapper on Listing {
  ListingAddRequest toAddRequest() => ListingAddRequest(
        title: title,
        description: description,
        price: price,
        status: status,
        primaryImageUrl: primaryImageUrl,
        imagesUrl: imagesUrl,
        ownerId: ownerId,
        categoryId: categoryId,
        subcategoryId: subcategoryId,
        subcategoryOptionsId: subcategoryOptionsId,
        pickupLocationId: pickupLocationId,
      );
}

extension ListingToUpdateRequestMapper on Listing {
  ListingUpdateRequest toUpdateRequest() => ListingUpdateRequest(
        id: id,
        title: title,
        description: description,
        price: price,
        status: status,
        primaryImageUrl: primaryImageUrl,
        imagesUrl: imagesUrl,
        categoryId: categoryId,
        subcategoryId: subcategoryId,
        subcategoryOptionsId: subcategoryOptionsId,
        pickupLocationId: pickupLocationId,
      );
}
