// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subcategory_listings_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SubcategoryListingsNotifier)
final subcategoryListingsProvider = SubcategoryListingsNotifierFamily._();

final class SubcategoryListingsNotifierProvider
    extends $AsyncNotifierProvider<SubcategoryListingsNotifier, List<Listing>> {
  SubcategoryListingsNotifierProvider._({
    required SubcategoryListingsNotifierFamily super.from,
    required SubcategoryListingKey super.argument,
  }) : super(
         retry: noListingProviderRetry,
         name: r'subcategoryListingsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$subcategoryListingsNotifierHash();

  @override
  String toString() {
    return r'subcategoryListingsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  SubcategoryListingsNotifier create() => SubcategoryListingsNotifier();

  @override
  bool operator ==(Object other) {
    return other is SubcategoryListingsNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$subcategoryListingsNotifierHash() =>
    r'92166507b115d7d1810595986b0123a4503e6b22';

final class SubcategoryListingsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          SubcategoryListingsNotifier,
          AsyncValue<List<Listing>>,
          List<Listing>,
          FutureOr<List<Listing>>,
          SubcategoryListingKey
        > {
  SubcategoryListingsNotifierFamily._()
    : super(
        retry: noListingProviderRetry,
        name: r'subcategoryListingsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SubcategoryListingsNotifierProvider call(SubcategoryListingKey arg) =>
      SubcategoryListingsNotifierProvider._(argument: arg, from: this);

  @override
  String toString() => r'subcategoryListingsProvider';
}

abstract class _$SubcategoryListingsNotifier
    extends $AsyncNotifier<List<Listing>> {
  late final _$args = ref.$arg as SubcategoryListingKey;
  SubcategoryListingKey get arg => _$args;

  FutureOr<List<Listing>> build(SubcategoryListingKey arg);
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
