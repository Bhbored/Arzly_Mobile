// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temp_real_estate_draft_holder.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TempRealEstateDraftHolder)
final tempRealEstateDraftHolderProvider = TempRealEstateDraftHolderProvider._();

final class TempRealEstateDraftHolderProvider
    extends $NotifierProvider<TempRealEstateDraftHolder, RealEstateDetails> {
  TempRealEstateDraftHolderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tempRealEstateDraftHolderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tempRealEstateDraftHolderHash();

  @$internal
  @override
  TempRealEstateDraftHolder create() => TempRealEstateDraftHolder();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RealEstateDetails value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RealEstateDetails>(value),
    );
  }
}

String _$tempRealEstateDraftHolderHash() =>
    r'3e344cecdddbdfe28bf8f25cb92a13cbe75d003a';

abstract class _$TempRealEstateDraftHolder
    extends $Notifier<RealEstateDetails> {
  RealEstateDetails build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<RealEstateDetails, RealEstateDetails>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<RealEstateDetails, RealEstateDetails>,
              RealEstateDetails,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
