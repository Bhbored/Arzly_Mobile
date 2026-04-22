import 'package:arzly/core/enums/listing_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'listing_add_request.freezed.dart';
part 'listing_add_request.g.dart';

@freezed
sealed class ListingAddRequest with _$ListingAddRequest {
  const factory ListingAddRequest({
    @JsonKey(name: 'Title') required String title,
    @JsonKey(name: 'Description') required String description,
    @JsonKey(name: 'Price') required double price,
    @JsonKey(name: 'Status') required ListingStatus status,
    @JsonKey(name: 'PrimaryImageUrl') String? primaryImageUrl,
    @JsonKey(name: 'ImagesUrl') List<String>? imagesUrl,
    @JsonKey(name: 'OwnerId') required String ownerId,
    @JsonKey(name: 'CategoryId') required String categoryId,
    @JsonKey(name: 'SubcategoryId') required String subcategoryId,
    @JsonKey(name: 'SubcategoryOptionsId') String? subcategoryOptionsId,
    @JsonKey(name: 'PickupLocationId') required String pickupLocationId,
  }) = _ListingAddRequest;

  factory ListingAddRequest.fromJson(Map<String, dynamic> json) =>
      _$ListingAddRequestFromJson(json);
}
