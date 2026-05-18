import 'dart:async';

import 'package:arzly/core/utils/subcategory_browse_filter.dart';
import 'package:arzly/core/utils/subcategory_listing_key.dart';
import 'package:arzly/data/providers/listings/listing_filters/by_subcategory/by_subcategory_filter_provider.dart';
import 'package:arzly/data/repositories/listing/listing_repo.dart';
import 'package:arzly/domain/entities/listing/listing.dart';
import 'package:arzly/domain/mappers/listing_mapper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'subcategory_listings_provider.g.dart';

Duration? noListingProviderRetry(int _, Object _) => null;

@Riverpod(retry: noListingProviderRetry, keepAlive: false)
class SubcategoryListingsNotifier extends _$SubcategoryListingsNotifier {
  ListingRepo get _repo => ref.read(listingRepoProvider);

  SubcategoryBrowseFilter get _filter =>
      ref.read(bySubcategoryFilterProvider(arg.subcategoryId));

  @override
  FutureOr<List<Listing>> build(SubcategoryListingKey arg) async => _fetch(arg);

  Future<List<Listing>> _fetch(SubcategoryListingKey key) async {
    final filter = _filter;
    final listings = await _repo.fetchBySubcategory(
      key.categoryId,
      key.subcategoryId,
      filter.browse.searchString,
      filter.browse.locationPreset,
      filter.detailsForApi,
      filter.browse.order,
      filter.browse.orderByPrice,
      filter.browse.minPrice,
      filter.browse.maxPrice,
    );
    return filter.browse.applyClientFilters(
      listings.map((listing) => listing.toEntity()).toList(),
    );
  }

  Future<void> reload() async {
    if (!ref.mounted) return;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _fetch(arg));
  }

  Future<void> refresh() async {
    ref.read(bySubcategoryFilterProvider(arg.subcategoryId).notifier).refresh();
    await reload();
  }
}
