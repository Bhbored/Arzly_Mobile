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
    r'3bedfbc842d47a8ed2593a32d6e06a51f898e53c';

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
