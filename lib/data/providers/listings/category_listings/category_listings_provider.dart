import 'dart:async';

import 'package:arzly/data/repositories/listing/listing_repo.dart';
import 'package:arzly/domain/entities/listing/listing.dart';
import 'package:arzly/domain/mappers/listing_mapper.dart';
import 'package:arzly/features/listings/shared/listing_browse_filter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_listings_provider.g.dart';

Duration? noListingProviderRetry(int _, Object _) => null;

@Riverpod(retry: noListingProviderRetry, keepAlive: false)
class CategoryListingsNotifier extends _$CategoryListingsNotifier {
  ListingRepo get _repo => ref.read(listingRepoProvider);

  ListingBrowseFilter _filter = ListingBrowseFilter.empty;

  @override
  FutureOr<List<Listing>> build(String categoryId) async => _fetch(categoryId);

  Future<List<Listing>> _fetch(String categoryId) async {
    final listings = await _repo.fetchByCategory(
      categoryId,
      _filter.searchString,
      _filter.locationPreset,
      _filter.order,
      _filter.orderByPrice,
      _filter.minPrice,
      _filter.maxPrice,
    );
    return _filter.applyClientFilters(
      listings.map((listing) => listing.toEntity()).toList(),
    );
  }

  Future<void> applyFilter(ListingBrowseFilter filter) async {
    _filter = filter;
    if (!ref.mounted) return;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _fetch(categoryId));
  }

  Future<void> refresh() async {
    if (!ref.mounted) return;
    _filter = ListingBrowseFilter.empty;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _fetch(categoryId));
  }
}
