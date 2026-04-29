import 'package:arzly/core/enums/job_listing/contact_method.dart';
import 'package:arzly/core/enums/listing/listing_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'listing_update_request.freezed.dart';
part 'listing_update_request.g.dart';

@freezed
sealed class ListingUpdateRequest with _$ListingUpdateRequest {
  const factory ListingUpdateRequest({
    @JsonKey(name: 'Id') required String id,
    @JsonKey(name: 'Title') required String title,
    @JsonKey(name: 'Description') required String description,
    @JsonKey(name: 'Price') required double price,
    @JsonKey(name: 'PrimaryImageUrl') String? primaryImageUrl,
    @JsonKey(name: 'ImagesUrl') List<String>? imagesUrl,
    @JsonKey(name: 'CategoryId') required String categoryId,
    @JsonKey(name: 'SubcategoryId') required String subcategoryId,
    @JsonKey(name: 'PickupLocationId') required String pickupLocationId,
    @JsonKey(name: 'Name') required String name,
    @JsonKey(name: 'PhoneNumber') required String phoneNumber,
    @JsonKey(name: 'IsPriceNegotiable') @Default(false) bool isPriceNegotiable,
    @JsonKey(name: 'ContactMethod') required ContactMethod contactMethod,
    @JsonKey(name: 'ListingDetails') dynamic listingDetails,
  }) = _ListingUpdateRequest;

  factory ListingUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$ListingUpdateRequestFromJson(json);
}
