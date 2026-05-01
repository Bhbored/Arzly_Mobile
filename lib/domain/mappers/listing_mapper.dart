import 'package:arzly/data/dtos/request/listing/listing_add_request.dart';
import 'package:arzly/data/dtos/request/listing/listing_update_request.dart';
import 'package:arzly/data/dtos/response/listing/listing_response.dart';
import 'package:arzly/domain/entities/listing/listing.dart';
import 'package:arzly/domain/mappers/pickup_location_mapper.dart';

extension ListingResponseMapper on ListingResponse {
  Listing toEntity() => Listing(
    id: id,
    title: title,
    description: description,
    price: price,
    status: status,
    primaryImageUrl: primaryImageUrl,
    imagesUrl: imagesUrl ?? [],
    createdAt: createdAt,
    updatedAt: updatedAt,
    name: name,
    phoneNumber: phoneNumber,
    isPriceNegotiable: isPriceNegotiable,
    isPromoted: isPromoted,
    promotionType: promotionType,
    promotionStartDate: promotionStartDate,
    promotionEndDate: promotionEndDate,
    contactMethod: contactMethod,
    ownerId: ownerId,
    categoryId: categoryId,
    subcategoryId: subcategoryId,
    pickupLocationId: pickupLocationId,
    listingDetails: listingDetails,
    pickupLocation: pickupLocation.toEntity(),
  );
}

extension ListingToAddRequestMapper on Listing {
  ListingAddRequest toAddRequest() => ListingAddRequest(
    title: title,
    description: description,
    price: price,
    primaryImageUrl: primaryImageUrl,
    imagesUrl: imagesUrl,
    categoryId: categoryId,
    subcategoryId: subcategoryId,
    pickupLocationId: pickupLocationId,
    name: name,
    phoneNumber: phoneNumber,
    isPriceNegotiable: isPriceNegotiable,
    contactMethod: contactMethod,
    listingDetails: listingDetails,
  );
}

extension ListingToUpdateRequestMapper on Listing {
  ListingUpdateRequest toUpdateRequest() => ListingUpdateRequest(
    id: id,
    title: title,
    description: description,
    price: price,
    primaryImageUrl: primaryImageUrl,
    imagesUrl: imagesUrl,
    categoryId: categoryId,
    subcategoryId: subcategoryId,
    pickupLocationId: pickupLocationId,
    name: name,
    phoneNumber: phoneNumber,
    isPriceNegotiable: isPriceNegotiable,
    contactMethod: contactMethod,
    listingDetails: listingDetails,
  );
}
