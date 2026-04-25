import 'package:arzly/core/enums/listing/listing_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'listing.freezed.dart';

@freezed
sealed class Listing with _$Listing {
  const factory Listing({
    required String id,
    required String title,
    required String description,
    required double price,
    required ListingStatus status,
    String? primaryImageUrl,
    List<String>? imagesUrl,
    required DateTime createdAt,
    DateTime? updatedAt,
    required String ownerId,
    required String categoryId,
    required String subcategoryId,
    required String pickupLocationId,
  }) = _Listing;
}
