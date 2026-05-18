// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'by_category_filter_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ByCategoryFilterNotifier)
final byCategoryFilterProvider = ByCategoryFilterNotifierFamily._();

final class ByCategoryFilterNotifierProvider
    extends $NotifierProvider<ByCategoryFilterNotifier, ListingBrowseFilter> {
  ByCategoryFilterNotifierProvider._({
    required ByCategoryFilterNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: noListingProviderRetry,
         name: r'byCategoryFilterProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$byCategoryFilterNotifierHash();

  @override
  String toString() {
    return r'byCategoryFilterProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ByCategoryFilterNotifier create() => ByCategoryFilterNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ListingBrowseFilter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ListingBrowseFilter>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ByCategoryFilterNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$byCategoryFilterNotifierHash() =>
    r'd7df6d2ea9e52755a1b8b6d90431249ed5d89d28';

final class ByCategoryFilterNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          ByCategoryFilterNotifier,
          ListingBrowseFilter,
          ListingBrowseFilter,
          ListingBrowseFilter,
          String
        > {
  ByCategoryFilterNotifierFamily._()
    : super(
        retry: noListingProviderRetry,
        name: r'byCategoryFilterProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ByCategoryFilterNotifierProvider call(String categoryId) =>
      ByCategoryFilterNotifierProvider._(argument: categoryId, from: this);

  @override
  String toString() => r'byCategoryFilterProvider';
}

abstract class _$ByCategoryFilterNotifier
    extends $Notifier<ListingBrowseFilter> {
  late final _$args = ref.$arg as String;
  String get categoryId => _$args;

  ListingBrowseFilter build(String categoryId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<ListingBrowseFilter, ListingBrowseFilter>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ListingBrowseFilter, ListingBrowseFilter>,
              ListingBrowseFilter,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
