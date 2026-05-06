import 'package:arzly/data/repositories/listing/listing_repo.dart';
import 'package:arzly/domain/entities/listing/listing.dart';
import 'package:arzly/domain/mappers/listing_mapper.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'initial_listings_provider.g.dart';

Duration? noProviderRetry(int _, Object _) => null;

@Riverpod(retry: noProviderRetry, keepAlive: true)
class InitialListingsProvider extends _$InitialListingsProvider {
  ListingRepo get _listingRepo => ref.read(listingRepoProvider.notifier);
  @override
  FutureOr<Map<String, List<Listing>>> build() async {
    return _loadInitialListings();
  }

  Future<void> fetchInitialListings() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(_loadInitialListings);
  }

  Future<Map<String, List<Listing>>> _loadInitialListings() async {
    final listingCategoriesMap = await _listingRepo
        .assignInitialListingsToCategories();
    return listingCategoriesMap.map(
      (key, value) =>
          MapEntry(key, value.map((listing) => listing.toEntity()).toList()),
    );
  }
}
