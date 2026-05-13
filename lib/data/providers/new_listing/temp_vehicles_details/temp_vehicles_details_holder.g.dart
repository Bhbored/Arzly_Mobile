// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temp_vehicles_details_holder.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TempVehiclesDetailsHolder)
final tempVehiclesDetailsHolderProvider = TempVehiclesDetailsHolderProvider._();

final class TempVehiclesDetailsHolderProvider
    extends $NotifierProvider<TempVehiclesDetailsHolder, VehiclesDetails> {
  TempVehiclesDetailsHolderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tempVehiclesDetailsHolderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tempVehiclesDetailsHolderHash();

  @$internal
  @override
  TempVehiclesDetailsHolder create() => TempVehiclesDetailsHolder();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(VehiclesDetails value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<VehiclesDetails>(value),
    );
  }
}

String _$tempVehiclesDetailsHolderHash() =>
    r'c648619946687c0cbe14f999a082e50ce050ea1f';

abstract class _$TempVehiclesDetailsHolder extends $Notifier<VehiclesDetails> {
  VehiclesDetails build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<VehiclesDetails, VehiclesDetails>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<VehiclesDetails, VehiclesDetails>,
              VehiclesDetails,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
