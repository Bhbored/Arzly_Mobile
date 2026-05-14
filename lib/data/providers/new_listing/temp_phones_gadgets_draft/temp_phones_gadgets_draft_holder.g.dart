// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temp_phones_gadgets_draft_holder.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TempPhonesGadgetsDraftHolder)
final tempPhonesGadgetsDraftHolderProvider =
    TempPhonesGadgetsDraftHolderProvider._();

final class TempPhonesGadgetsDraftHolderProvider
    extends $NotifierProvider<TempPhonesGadgetsDraftHolder, PhonesDetails> {
  TempPhonesGadgetsDraftHolderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tempPhonesGadgetsDraftHolderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tempPhonesGadgetsDraftHolderHash();

  @$internal
  @override
  TempPhonesGadgetsDraftHolder create() => TempPhonesGadgetsDraftHolder();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PhonesDetails value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PhonesDetails>(value),
    );
  }
}

String _$tempPhonesGadgetsDraftHolderHash() =>
    r'2dcb6f3a86e83ca90943b68f306b5f915996f685';

abstract class _$TempPhonesGadgetsDraftHolder extends $Notifier<PhonesDetails> {
  PhonesDetails build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<PhonesDetails, PhonesDetails>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PhonesDetails, PhonesDetails>,
              PhonesDetails,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
