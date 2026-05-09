// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subcatgeory_repo.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(subCategoryRepo)
final subCategoryRepoProvider = SubCategoryRepoProvider._();

final class SubCategoryRepoProvider
    extends
        $FunctionalProvider<SubCategoryRepo, SubCategoryRepo, SubCategoryRepo>
    with $Provider<SubCategoryRepo> {
  SubCategoryRepoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'subCategoryRepoProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$subCategoryRepoHash();

  @$internal
  @override
  $ProviderElement<SubCategoryRepo> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SubCategoryRepo create(Ref ref) {
    return subCategoryRepo(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SubCategoryRepo value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SubCategoryRepo>(value),
    );
  }
}

String _$subCategoryRepoHash() => r'ea73d0c09600941a723bd3bd194287ee0e21648d';
