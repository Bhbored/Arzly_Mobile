// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initial_listings_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(InitialListingsProvider)
final initialListingsProviderProvider = InitialListingsProviderProvider._();

final class InitialListingsProviderProvider
    extends
        $AsyncNotifierProvider<
          InitialListingsProvider,
          Map<String, List<Listing>>
        > {
  InitialListingsProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: noProviderRetry,
        name: r'initialListingsProviderProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$initialListingsProviderHash();

  @$internal
  @override
  InitialListingsProvider create() => InitialListingsProvider();
}

String _$initialListingsProviderHash() =>
    r'409b8d43211e074870f7897a1c7e3876c9489c47';

abstract class _$InitialListingsProvider
    extends $AsyncNotifier<Map<String, List<Listing>>> {
  FutureOr<Map<String, List<Listing>>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<Map<String, List<Listing>>>,
              Map<String, List<Listing>>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<Map<String, List<Listing>>>,
                Map<String, List<Listing>>
              >,
              AsyncValue<Map<String, List<Listing>>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
