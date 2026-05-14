// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_getter_client.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(locationGetterClient)
final locationGetterClientProvider = LocationGetterClientProvider._();

final class LocationGetterClientProvider
    extends $FunctionalProvider<DioClient, DioClient, DioClient>
    with $Provider<DioClient> {
  LocationGetterClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'locationGetterClientProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$locationGetterClientHash();

  @$internal
  @override
  $ProviderElement<DioClient> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  DioClient create(Ref ref) {
    return locationGetterClient(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DioClient value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DioClient>(value),
    );
  }
}

String _$locationGetterClientHash() =>
    r'681bc1f06f0aef1d2448a2b040d9af196e16498c';
