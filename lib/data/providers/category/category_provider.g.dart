// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CategoryData)
final categoryDataProvider = CategoryDataProvider._();

final class CategoryDataProvider
    extends $AsyncNotifierProvider<CategoryData, List<Category>> {
  CategoryDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: noProviderRetry,
        name: r'categoryDataProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$categoryDataHash();

  @$internal
  @override
  CategoryData create() => CategoryData();
}

String _$categoryDataHash() => r'8d8b9386a33c1098964c7640a09ffcff98fd5795';

abstract class _$CategoryData extends $AsyncNotifier<List<Category>> {
  FutureOr<List<Category>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Category>>, List<Category>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Category>>, List<Category>>,
              AsyncValue<List<Category>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
