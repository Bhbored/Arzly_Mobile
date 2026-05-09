// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subcategory_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SubcategoryNotifier)
final subcategoryProvider = SubcategoryNotifierFamily._();

final class SubcategoryNotifierProvider
    extends $AsyncNotifierProvider<SubcategoryNotifier, List<SubCategory>> {
  SubcategoryNotifierProvider._({
    required SubcategoryNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: noProviderRetry,
         name: r'subcategoryProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$subcategoryNotifierHash();

  @override
  String toString() {
    return r'subcategoryProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  SubcategoryNotifier create() => SubcategoryNotifier();

  @override
  bool operator ==(Object other) {
    return other is SubcategoryNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$subcategoryNotifierHash() =>
    r'4081bdd6de5fa07e9e6ad7396063dbf3191fb935';

final class SubcategoryNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          SubcategoryNotifier,
          AsyncValue<List<SubCategory>>,
          List<SubCategory>,
          FutureOr<List<SubCategory>>,
          String
        > {
  SubcategoryNotifierFamily._()
    : super(
        retry: noProviderRetry,
        name: r'subcategoryProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SubcategoryNotifierProvider call(String categoryId) =>
      SubcategoryNotifierProvider._(argument: categoryId, from: this);

  @override
  String toString() => r'subcategoryProvider';
}

abstract class _$SubcategoryNotifier extends $AsyncNotifier<List<SubCategory>> {
  late final _$args = ref.$arg as String;
  String get categoryId => _$args;

  FutureOr<List<SubCategory>> build(String categoryId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<SubCategory>>, List<SubCategory>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<SubCategory>>, List<SubCategory>>,
              AsyncValue<List<SubCategory>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
