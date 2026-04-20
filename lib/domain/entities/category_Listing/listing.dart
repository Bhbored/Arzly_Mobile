import 'package:arzly/domain/entities/category_Listing/category.dart';
import 'package:arzly/core/enums/listing_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'listing.freezed.dart';
part 'listing.g.dart';

@freezed
sealed class Listing with _$Listing {
  const factory Listing({
    required String id,
    required String ownerId,
    required String title,
    required String description,
    String? priceOrType,
    required ListingStatus status,
    String? primaryImageUrl,
    required String locationHint,
    required DateTime createdAt,
    required Category category,
  }) = _Listing;

  factory Listing.fromJson(Map<String, dynamic> json) =>
      _$ListingFromJson(json);
}
