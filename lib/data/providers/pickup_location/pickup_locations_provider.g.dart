// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pickup_locations_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PickupLocations)
final pickupLocationsProvider = PickupLocationsProvider._();

final class PickupLocationsProvider
    extends $AsyncNotifierProvider<PickupLocations, List<PickupLocation>> {
  PickupLocationsProvider._()
    : super(
        from: null,
        argument: null,
        retry: noPickupLocationsRetry,
        name: r'pickupLocationsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pickupLocationsHash();

  @$internal
  @override
  PickupLocations create() => PickupLocations();
}

String _$pickupLocationsHash() => r'25173f6838d77e660109157acf5b3a6f8caf5468';

abstract class _$PickupLocations extends $AsyncNotifier<List<PickupLocation>> {
  FutureOr<List<PickupLocation>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<List<PickupLocation>>, List<PickupLocation>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<PickupLocation>>,
                List<PickupLocation>
              >,
              AsyncValue<List<PickupLocation>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
