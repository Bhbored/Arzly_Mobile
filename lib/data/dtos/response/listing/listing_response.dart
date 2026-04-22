import 'package:arzly/core/enums/listing_status.dart';
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
    @JsonKey(name: 'Status') required ListingStatus status,
    @JsonKey(name: 'PrimaryImageUrl') String? primaryImageUrl,
    @JsonKey(name: 'ImagesUrl') List<String>? imagesUrl,
    @JsonKey(name: 'CreatedAt') required DateTime createdAt,
    @JsonKey(name: 'UpdatedAt') DateTime? updatedAt,
    @JsonKey(name: 'OwnerId') required String ownerId,
    @JsonKey(name: 'CategoryId') required String categoryId,
    @JsonKey(name: 'SubcategoryId') required String subcategoryId,
    @JsonKey(name: 'SubcategoryOptionsId') String? subcategoryOptionsId,
    @JsonKey(name: 'PickupLocationId') required String pickupLocationId,
  }) = _ListingResponse;

  factory ListingResponse.fromJson(Map<String, dynamic> json) =>
      _$ListingResponseFromJson(json);
}
