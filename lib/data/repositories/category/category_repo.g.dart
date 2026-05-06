// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_repo.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CategoryRepo)
final categoryRepoProvider = CategoryRepoProvider._();

final class CategoryRepoProvider
    extends $AsyncNotifierProvider<CategoryRepo, void> {
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
  CategoryRepo create() => CategoryRepo();
}

String _$categoryRepoHash() => r'02d53d2e9bd5e3f4c9e7c014070af42fbe495600';

abstract class _$CategoryRepo extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, void>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
