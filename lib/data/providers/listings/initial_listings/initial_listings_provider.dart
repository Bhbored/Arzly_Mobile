import 'package:arzly/data/repositories/listing/listing_repo.dart';
import 'package:arzly/domain/entities/listing/initial_listing_section.dart';
import 'package:arzly/domain/mappers/listing_mapper.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'initial_listings_provider.g.dart';

Duration? noProviderRetry(int _, Object _) => null;

@Riverpod(retry: noProviderRetry, keepAlive: true)
class InitialListingsProvider extends _$InitialListingsProvider {
  ListingRepo get _listingRepo => ref.read(listingRepoProvider);

  @override
  FutureOr<List<InitialListingSection>> build() async {
    return _loadInitialListings();
  }

  Future<void> refresh() async {
    if (ref.mounted) {
      state = const AsyncValue.loading();
      state = await AsyncValue.guard(_loadInitialListings);
    }
  }

  Future<List<InitialListingSection>> _loadInitialListings() async {
    final sections = await _listingRepo.assignInitialListingsSubcatgeory();
    return sections
        .map(
          (section) => InitialListingSection(
            subcategoryName: section.subcategoryName,
            listings: section.listings
                .map((listing) => listing.toEntity())
                .toList(),
          ),
        )
        .toList();
  }
}
