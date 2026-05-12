// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_uploader_dio_instance.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(imageUploaderClient)
final imageUploaderClientProvider = ImageUploaderClientProvider._();

final class ImageUploaderClientProvider
    extends $FunctionalProvider<DioClient, DioClient, DioClient>
    with $Provider<DioClient> {
  ImageUploaderClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'imageUploaderClientProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$imageUploaderClientHash();

  @$internal
  @override
  $ProviderElement<DioClient> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  DioClient create(Ref ref) {
    return imageUploaderClient(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DioClient value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DioClient>(value),
    );
  }
}

String _$imageUploaderClientHash() =>
    r'e204a12bae988863b232cb26e4cbef9fc9ec1c8b';
