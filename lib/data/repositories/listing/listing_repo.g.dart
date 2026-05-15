// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_repo.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(listingRepo)
final listingRepoProvider = ListingRepoProvider._();

final class ListingRepoProvider
    extends $FunctionalProvider<ListingRepo, ListingRepo, ListingRepo>
    with $Provider<ListingRepo> {
  ListingRepoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'listingRepoProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$listingRepoHash();

  @$internal
  @override
  $ProviderElement<ListingRepo> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ListingRepo create(Ref ref) {
    return listingRepo(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ListingRepo value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ListingRepo>(value),
    );
  }
}

String _$listingRepoHash() => r'56a311c3e1e8d91f09cb5b0b6a7b8ed48bdaa3ff';
