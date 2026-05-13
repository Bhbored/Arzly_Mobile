// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temp_listing_draft_holder.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TempListingDraftHolder)
final tempListingDraftHolderProvider = TempListingDraftHolderProvider._();

final class TempListingDraftHolderProvider
    extends $NotifierProvider<TempListingDraftHolder, Listing> {
  TempListingDraftHolderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tempListingDraftHolderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tempListingDraftHolderHash();

  @$internal
  @override
  TempListingDraftHolder create() => TempListingDraftHolder();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Listing value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Listing>(value),
    );
  }
}

String _$tempListingDraftHolderHash() =>
    r'1e578778c77d28007c32cace83aee9e4fb45c74b';

abstract class _$TempListingDraftHolder extends $Notifier<Listing> {
  Listing build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<Listing, Listing>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Listing, Listing>,
              Listing,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
