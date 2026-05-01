import 'package:arzly/core/enums/job_listing/contact_method.dart';
import 'package:arzly/core/enums/listing/listing_status.dart';
import 'package:arzly/core/enums/listing/promotion_type.dart';
import 'package:arzly/data/dtos/response/pickup_location/pickup_location_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'listing_response.g.dart';
part 'listing_response.freezed.dart';

@freezed
sealed class ListingResponse with _$ListingResponse {
  const factory ListingResponse({
    @JsonKey(name: 'Id') required String id,
    @JsonKey(name: 'Title') required String title,
    @JsonKey(name: 'Description') required String description,
    @JsonKey(name: 'Price') required double price,
    @JsonKey(name: 'IsPriceNegotiable') @Default(false) bool isPriceNegotiable,
    @JsonKey(name: 'Status') required ListingStatus status,
    @JsonKey(name: 'PrimaryImageUrl') String? primaryImageUrl,
    @JsonKey(name: 'ImagesUrl') List<String>? imagesUrl,
    @JsonKey(name: 'CreatedAt') required DateTime createdAt,
    @JsonKey(name: 'UpdatedAt') DateTime? updatedAt,
    @JsonKey(name: 'OwnerId') required String ownerId,
    @JsonKey(name: 'CategoryId') required String categoryId,
    @JsonKey(name: 'SubcategoryId') required String subcategoryId,
    @JsonKey(name: 'PickupLocationId') required String pickupLocationId,
    @JsonKey(name: 'ListingDetails') dynamic listingDetails,
    @JsonKey(name: 'Name') required String name,
    @JsonKey(name: 'PhoneNumber') required String phoneNumber,
    @JsonKey(name: 'ContactMethod') required ContactMethod contactMethod,
    @JsonKey(name: 'IsPromoted') @Default(false) bool isPromoted,
    @JsonKey(name: 'PromotionType') PromotionType? promotionType,
    @JsonKey(name: 'PromotionStartDate') DateTime? promotionStartDate,
    @JsonKey(name: 'PromotionEndDate') DateTime? promotionEndDate,
    @JsonKey(name: 'PickupLocation')
    required PickupLocationResponse pickupLocation,
  }) = _ListingResponse;

  factory ListingResponse.fromJson(Map<String, dynamic> json) =>
      _$ListingResponseFromJson(json);
}
