import 'dart:async';

import 'package:arzly/core/utils/listing_browse_filter.dart';
import 'package:arzly/data/providers/listings/listing_filters/by_category/by_category_filter_provider.dart';
import 'package:arzly/data/repositories/listing/listing_repo.dart';
import 'package:arzly/domain/entities/listing/listing.dart';
import 'package:arzly/domain/mappers/listing_mapper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_listings_provider.g.dart';

Duration? noListingProviderRetry(int _, Object _) => null;

@Riverpod(retry: noListingProviderRetry, keepAlive: false)
class CategoryListingsNotifier extends _$CategoryListingsNotifier {
  ListingRepo get _repo => ref.read(listingRepoProvider);

  ListingBrowseFilter get _filter =>
      ref.read(byCategoryFilterProvider(categoryId));

  @override
  FutureOr<List<Listing>> build(String categoryId) async => _fetch(categoryId);

  Future<List<Listing>> _fetch(String categoryId) async {
    final filter = _filter;
    final listings = await _repo.fetchByCategory(
      categoryId,
      filter.searchString,
      filter.locationPreset,
      filter.order,
      filter.orderByPrice,
      filter.minPrice,
      filter.maxPrice,
    );
    return filter.applyClientFilters(
      listings.map((listing) => listing.toEntity()).toList(),
    );
  }

  Future<void> reload() async {
    if (!ref.mounted) return;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _fetch(categoryId));
  }

  Future<void> refresh() async {
    ref.read(byCategoryFilterProvider(categoryId).notifier).refresh();
    await reload();
  }
}
