// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subcategory_dio_instance.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(subcategoryClient)
final subcategoryClientProvider = SubcategoryClientProvider._();

final class SubcategoryClientProvider
    extends $FunctionalProvider<DioClient, DioClient, DioClient>
    with $Provider<DioClient> {
  SubcategoryClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'subcategoryClientProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$subcategoryClientHash();

  @$internal
  @override
  $ProviderElement<DioClient> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  DioClient create(Ref ref) {
    return subcategoryClient(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DioClient value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DioClient>(value),
    );
  }
}

String _$subcategoryClientHash() => r'be43e38fa8dafca56a073fff898638de607fa06f';
