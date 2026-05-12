// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temp_images_holder.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TempImagesHolder)
final tempImagesHolderProvider = TempImagesHolderProvider._();

final class TempImagesHolderProvider
    extends $AsyncNotifierProvider<TempImagesHolder, TempImagesState> {
  TempImagesHolderProvider._()
    : super(
        from: null,
        argument: null,
        retry: noTempImagesHolderRetry,
        name: r'tempImagesHolderProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tempImagesHolderHash();

  @$internal
  @override
  TempImagesHolder create() => TempImagesHolder();
}

String _$tempImagesHolderHash() => r'8325a74cc3b6584d5c1074af83e70ee136cabbe5';

abstract class _$TempImagesHolder extends $AsyncNotifier<TempImagesState> {
  FutureOr<TempImagesState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<TempImagesState>, TempImagesState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<TempImagesState>, TempImagesState>,
              AsyncValue<TempImagesState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
