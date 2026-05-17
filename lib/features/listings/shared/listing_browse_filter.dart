import 'package:arzly/core/enums/location_preset.dart';
import 'package:arzly/domain/entities/listing/listing.dart';

class ListingBrowseOrderOption {
  const ListingBrowseOrderOption({
    required this.label,
    required this.value,
  });

  final String label;
  final String value;
}

class ListingBrowseOrders {
  ListingBrowseOrders._();

  static const defaultOrder = 'desc';

  static const dateOptions = [
    ListingBrowseOrderOption(label: 'Newest first', value: 'desc'),
    ListingBrowseOrderOption(label: 'Oldest first', value: 'asc'),
  ];

  static const priceOptions = [
    ListingBrowseOrderOption(label: 'Low to high', value: 'asc'),
    ListingBrowseOrderOption(label: 'High to low', value: 'desc'),
  ];
}

class ListingBrowseFilter {
  const ListingBrowseFilter({
    this.order = ListingBrowseOrders.defaultOrder,
    this.orderByPrice = ListingBrowseOrders.defaultOrder,
    this.searchString,
    this.locationPreset,
    this.minPrice,
    this.maxPrice,
    this.negotiableOnly = false,
  });

  final String order;
  final String orderByPrice;
  final String? searchString;
  final LocationPreset? locationPreset;
  final double? minPrice;
  final double? maxPrice;
  final bool negotiableOnly;

  static const empty = ListingBrowseFilter();

  bool get hasActiveFilters =>
      searchString != null ||
      locationPreset != null ||
      minPrice != null ||
      maxPrice != null ||
      negotiableOnly ||
      order != ListingBrowseOrders.defaultOrder ||
      orderByPrice != ListingBrowseOrders.defaultOrder;

  ListingBrowseFilter copyWith({
    String? order,
    String? orderByPrice,
    String? searchString,
    LocationPreset? locationPreset,
    bool clearLocationPreset = false,
    double? minPrice,
    double? maxPrice,
    bool? negotiableOnly,
    bool clearSearchString = false,
    bool clearMinPrice = false,
    bool clearMaxPrice = false,
  }) {
    return ListingBrowseFilter(
      order: order ?? this.order,
      orderByPrice: orderByPrice ?? this.orderByPrice,
      searchString:
          clearSearchString ? null : (searchString ?? this.searchString),
      locationPreset: clearLocationPreset
          ? null
          : (locationPreset ?? this.locationPreset),
      minPrice: clearMinPrice ? null : (minPrice ?? this.minPrice),
      maxPrice: clearMaxPrice ? null : (maxPrice ?? this.maxPrice),
      negotiableOnly: negotiableOnly ?? this.negotiableOnly,
    );
  }

  List<Listing> applyClientFilters(List<Listing> listings) {
    if (!negotiableOnly) return listings;
    return listings.where((listing) => listing.isPriceNegotiable).toList();
  }
}
