// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'by_subcategory_filter_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BySubcategoryFilterNotifier)
final bySubcategoryFilterProvider = BySubcategoryFilterNotifierFamily._();

final class BySubcategoryFilterNotifierProvider
    extends
        $NotifierProvider<
          BySubcategoryFilterNotifier,
          SubcategoryBrowseFilter
        > {
  BySubcategoryFilterNotifierProvider._({
    required BySubcategoryFilterNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: noListingProviderRetry,
         name: r'bySubcategoryFilterProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$bySubcategoryFilterNotifierHash();

  @override
  String toString() {
    return r'bySubcategoryFilterProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  BySubcategoryFilterNotifier create() => BySubcategoryFilterNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SubcategoryBrowseFilter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SubcategoryBrowseFilter>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is BySubcategoryFilterNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$bySubcategoryFilterNotifierHash() =>
    r'c41e3b1c00103617f32e0d9ecf4a96027cb245f5';

final class BySubcategoryFilterNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          BySubcategoryFilterNotifier,
          SubcategoryBrowseFilter,
          SubcategoryBrowseFilter,
          SubcategoryBrowseFilter,
          String
        > {
  BySubcategoryFilterNotifierFamily._()
    : super(
        retry: noListingProviderRetry,
        name: r'bySubcategoryFilterProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  BySubcategoryFilterNotifierProvider call(String subcategoryId) =>
      BySubcategoryFilterNotifierProvider._(
        argument: subcategoryId,
        from: this,
      );

  @override
  String toString() => r'bySubcategoryFilterProvider';
}

abstract class _$BySubcategoryFilterNotifier
    extends $Notifier<SubcategoryBrowseFilter> {
  late final _$args = ref.$arg as String;
  String get subcategoryId => _$args;

  SubcategoryBrowseFilter build(String subcategoryId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<SubcategoryBrowseFilter, SubcategoryBrowseFilter>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SubcategoryBrowseFilter, SubcategoryBrowseFilter>,
              SubcategoryBrowseFilter,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
