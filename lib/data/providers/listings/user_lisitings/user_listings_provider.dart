import 'package:arzly/data/repositories/listing/listing_repo.dart';
import 'package:arzly/domain/entities/listing/listing.dart';
import 'package:arzly/domain/mappers/listing_mapper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_listings_provider.g.dart';

Duration? noUserListingsRetry(int _, Object _) => null;

@Riverpod(retry: noUserListingsRetry, keepAlive: true)
class UserListingsNotifier extends _$UserListingsNotifier {
  ListingRepo get _repo => ref.read(listingRepoProvider);

  @override
  FutureOr<List<Listing>> build() async => await _load();

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

  Future<void> submitNewListing(Listing listing) async {
    await _repo.addListing(listing.toAddRequest());
    await refresh();
  }

  Future<void> submitUpdatedListing(Listing listing) async {
    await _repo.updateListing(listing.toUpdateRequest());
    await refresh();
  }
}
