import 'dart:async';

import 'package:arzly/data/repositories/pickup_location/pickup_location_repo.dart';
import 'package:arzly/domain/entities/pickup_location/pickup_location.dart';
import 'package:arzly/domain/mappers/pickup_location_mapper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pickup_locations_provider.g.dart';

Duration? noPickupLocationsRetry(int _, Object _) => null;

@Riverpod(retry: noPickupLocationsRetry, keepAlive: true)
class PickupLocations extends _$PickupLocations {
  PickupLocationRepo get _repo => ref.read(pickupLocationRepoProvider);

  @override
  FutureOr<List<PickupLocation>> build() async => await _load();

  Future<List<PickupLocation>> _load() async {
    final dtos = await _repo.getUserLocationsAsync();
    return dtos.map((e) => e.toEntity()).toList();
  }

  Future<void> refresh() async {
    if (ref.mounted) {
      state = const AsyncValue.loading();
      state = await AsyncValue.guard(_load);
    }
  }

  Future<void> add(PickupLocation location) async {
    await _repo.addPickupLocation(location.toAddRequest());
    await refresh();
  }

  Future<void> submitUpdatedLocation(PickupLocation location) async {
    await _repo.updatePickupLocation(location.toUpdateRequest());
    await refresh();
  }
}
