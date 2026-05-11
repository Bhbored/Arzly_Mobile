// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Listings)
final listingsProvider = ListingsProvider._();

final class ListingsProvider
    extends $AsyncNotifierProvider<Listings, List<Listing>> {
  ListingsProvider._()
    : super(
        from: null,
        argument: null,
        retry: noListingProviderRetry,
        name: r'listingsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$listingsHash();

  @$internal
  @override
  Listings create() => Listings();
}

String _$listingsHash() => r'ce546ae77ea0ca72c9961cc2d187c52dc9c023d1';

abstract class _$Listings extends $AsyncNotifier<List<Listing>> {
  FutureOr<List<Listing>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Listing>>, List<Listing>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Listing>>, List<Listing>>,
              AsyncValue<List<Listing>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
