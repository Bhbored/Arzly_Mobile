import 'dart:async';

import 'package:arzly/data/repositories/listing/listing_repo.dart';
import 'package:arzly/domain/entities/listing/listing.dart';
import 'package:arzly/domain/mappers/listing_mapper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'listing_provider.g.dart';

Duration? noListingProviderRetry(int _, Object _) => null;

@Riverpod(retry: noListingProviderRetry, keepAlive: true)
class Listings extends _$Listings {
  ListingRepo get _repo => ref.read(listingRepoProvider);

  @override
  FutureOr<List<Listing>> build() async => _load();

  Future<List<Listing>> _load() async {
    final listings = await _repo.getByUserId();
    return listings.map((listing) => listing.toEntity()).toList();
  }

  Future<void> refresh() async {
    if (ref.mounted) {
      state = const AsyncValue.loading();
      state = await AsyncValue.guard(_load);
    }
  }

  Future<void> add(Listing listing) async {
    await _repo.addListing(listing.toAddRequest());
    await refresh();
  }

  Future<void> submitUpdatedListing(Listing listing) async {
    await _repo.updateListing(listing.toUpdateRequest());
    await refresh();
  }
}
