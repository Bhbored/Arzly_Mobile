// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_listings_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CategoryListingsNotifier)
final categoryListingsProvider = CategoryListingsNotifierFamily._();

final class CategoryListingsNotifierProvider
    extends $AsyncNotifierProvider<CategoryListingsNotifier, List<Listing>> {
  CategoryListingsNotifierProvider._({
    required CategoryListingsNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: noListingProviderRetry,
         name: r'categoryListingsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$categoryListingsNotifierHash();

  @override
  String toString() {
    return r'categoryListingsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  CategoryListingsNotifier create() => CategoryListingsNotifier();

  @override
  bool operator ==(Object other) {
    return other is CategoryListingsNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$categoryListingsNotifierHash() =>
    r'7ef083fe6f3d1eefe2818bde430914ca1980a28a';

final class CategoryListingsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          CategoryListingsNotifier,
          AsyncValue<List<Listing>>,
          List<Listing>,
          FutureOr<List<Listing>>,
          String
        > {
  CategoryListingsNotifierFamily._()
    : super(
        retry: noListingProviderRetry,
        name: r'categoryListingsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CategoryListingsNotifierProvider call(String categoryId) =>
      CategoryListingsNotifierProvider._(argument: categoryId, from: this);

  @override
  String toString() => r'categoryListingsProvider';
}

abstract class _$CategoryListingsNotifier
    extends $AsyncNotifier<List<Listing>> {
  late final _$args = ref.$arg as String;
  String get categoryId => _$args;

  FutureOr<List<Listing>> build(String categoryId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Listing>>, List<Listing>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Listing>>, List<Listing>>,
              AsyncValue<List<Listing>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
