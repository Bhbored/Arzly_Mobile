import 'package:arzly/core/enums/job_listing/contact_method.dart';
import 'package:arzly/core/enums/listing/listing_status.dart';
import 'package:arzly/core/enums/listing/promotion_type.dart';
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
    @Default([]) List<String> imagesUrl,
    required DateTime createdAt,
    DateTime? updatedAt,
    required String name,
    required String phoneNumber,
    @Default(false) bool isPriceNegotiable,
    @Default(false) bool isPromoted,
    PromotionType? promotionType,
    DateTime? promotionStartDate,
    DateTime? promotionEndDate,
    required ContactMethod contactMethod,
    required String ownerId,
    required String categoryId,
    required String subcategoryId,
    required String pickupLocationId,
    dynamic listingDetails,
  }) = _Listing;
}
