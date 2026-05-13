// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_upload_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(imageUploadHelper)
final imageUploadHelperProvider = ImageUploadHelperProvider._();

final class ImageUploadHelperProvider
    extends
        $FunctionalProvider<
          ImageUploadHelper,
          ImageUploadHelper,
          ImageUploadHelper
        >
    with $Provider<ImageUploadHelper> {
  ImageUploadHelperProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'imageUploadHelperProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$imageUploadHelperHash();

  @$internal
  @override
  $ProviderElement<ImageUploadHelper> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ImageUploadHelper create(Ref ref) {
    return imageUploadHelper(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ImageUploadHelper value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ImageUploadHelper>(value),
    );
  }
}

String _$imageUploadHelperHash() => r'575578e0484f4ea32b6d2fb08dc19947cd8d22e8';
