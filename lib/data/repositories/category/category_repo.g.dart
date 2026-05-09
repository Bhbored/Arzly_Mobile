// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_repo.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(categoryRepo)
final categoryRepoProvider = CategoryRepoProvider._();

final class CategoryRepoProvider
    extends $FunctionalProvider<CategoryRepo, CategoryRepo, CategoryRepo>
    with $Provider<CategoryRepo> {
  CategoryRepoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'categoryRepoProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$categoryRepoHash();

  @$internal
  @override
  $ProviderElement<CategoryRepo> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CategoryRepo create(Ref ref) {
    return categoryRepo(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CategoryRepo value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CategoryRepo>(value),
    );
  }
}

String _$categoryRepoHash() => r'ee268c47eb0f37f7a0f3c332bddc7376cfda75d8';
