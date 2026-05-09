// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pickup_location_repo.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(pickupLocationRepo)
final pickupLocationRepoProvider = PickupLocationRepoProvider._();

final class PickupLocationRepoProvider
    extends
        $FunctionalProvider<
          PickupLocationRepo,
          PickupLocationRepo,
          PickupLocationRepo
        >
    with $Provider<PickupLocationRepo> {
  PickupLocationRepoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pickupLocationRepoProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pickupLocationRepoHash();

  @$internal
  @override
  $ProviderElement<PickupLocationRepo> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PickupLocationRepo create(Ref ref) {
    return pickupLocationRepo(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PickupLocationRepo value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PickupLocationRepo>(value),
    );
  }
}

String _$pickupLocationRepoHash() =>
    r'a6876d3788d1a710f4103a465664fd684aed5535';
