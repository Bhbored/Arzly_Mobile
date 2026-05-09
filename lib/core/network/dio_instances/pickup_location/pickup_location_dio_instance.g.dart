// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pickup_location_dio_instance.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(pickupLocationClient)
final pickupLocationClientProvider = PickupLocationClientProvider._();

final class PickupLocationClientProvider
    extends $FunctionalProvider<DioClient, DioClient, DioClient>
    with $Provider<DioClient> {
  PickupLocationClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pickupLocationClientProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pickupLocationClientHash();

  @$internal
  @override
  $ProviderElement<DioClient> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  DioClient create(Ref ref) {
    return pickupLocationClient(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DioClient value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DioClient>(value),
    );
  }
}

String _$pickupLocationClientHash() =>
    r'fc8b1bd084595e464ec1f8a783d07352dfb96bf0';
