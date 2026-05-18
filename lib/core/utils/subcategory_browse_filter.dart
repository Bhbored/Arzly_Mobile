import 'package:arzly/core/utils/listing_browse_filter.dart';
import 'package:arzly/core/utils/listing_details_filter_codec.dart';
import 'package:flutter/foundation.dart';

class SubcategoryBrowseFilter {
  const SubcategoryBrowseFilter({
    this.browse = ListingBrowseFilter.empty,
    this.details,
  });

  final ListingBrowseFilter browse;
  final Object? details;

  static const empty = SubcategoryBrowseFilter();

  bool get hasActiveDetails => ListingDetailsFilterCodec.hasActiveDetails(details);

  bool get hasActiveFilters => browse.hasActiveFilters || hasActiveDetails;

  Object? get detailsForApi => ListingDetailsFilterCodec.toApiPayload(details);

  SubcategoryBrowseFilter copyWith({
    ListingBrowseFilter? browse,
    Object? details,
    bool clearDetails = false,
  }) {
    return SubcategoryBrowseFilter(
      browse: browse ?? this.browse,
      details: clearDetails ? null : (details ?? this.details),
    );
  }

  bool isSameAs(SubcategoryBrowseFilter other) {
    if (!browse.isSameAs(other.browse)) return false;
    return mapEquals(
      ListingDetailsFilterCodec.toApiPayload(details),
      ListingDetailsFilterCodec.toApiPayload(other.details),
    );
  }
}
