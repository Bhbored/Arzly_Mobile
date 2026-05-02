// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_repo.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ListingRepo)
final listingRepoProvider = ListingRepoProvider._();

final class ListingRepoProvider
    extends $AsyncNotifierProvider<ListingRepo, List<ListingResponse>> {
  ListingRepoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'listingRepoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$listingRepoHash();

  @$internal
  @override
  ListingRepo create() => ListingRepo();
}

String _$listingRepoHash() => r'78a2f8bbfa1207b998c24ab0cbc67ee22ad51abf';

abstract class _$ListingRepo extends $AsyncNotifier<List<ListingResponse>> {
  FutureOr<List<ListingResponse>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<List<ListingResponse>>, List<ListingResponse>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<ListingResponse>>,
                List<ListingResponse>
              >,
              AsyncValue<List<ListingResponse>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
