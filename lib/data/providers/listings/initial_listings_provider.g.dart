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
          List<InitialListingSection>
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
    r'4e05c7273f93abcd56d15467780fe2fba012fcf4';

abstract class _$InitialListingsProvider
    extends $AsyncNotifier<List<InitialListingSection>> {
  FutureOr<List<InitialListingSection>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<InitialListingSection>>,
              List<InitialListingSection>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<InitialListingSection>>,
                List<InitialListingSection>
              >,
              AsyncValue<List<InitialListingSection>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
