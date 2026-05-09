// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_getter.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(locationGetter)
final locationGetterProvider = LocationGetterProvider._();

final class LocationGetterProvider
    extends $FunctionalProvider<LocationGetter, LocationGetter, LocationGetter>
    with $Provider<LocationGetter> {
  LocationGetterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'locationGetterProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$locationGetterHash();

  @$internal
  @override
  $ProviderElement<LocationGetter> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LocationGetter create(Ref ref) {
    return locationGetter(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LocationGetter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LocationGetter>(value),
    );
  }
}

String _$locationGetterHash() => r'8bba3fc6f4ea6ec0cbe4c0f29a1c24c844f02b50';
