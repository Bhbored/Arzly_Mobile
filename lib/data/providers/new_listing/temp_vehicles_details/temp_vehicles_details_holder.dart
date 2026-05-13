import 'package:arzly/domain/entities/listing/vehicles_details/vehicles_details.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'temp_vehicles_details_holder.g.dart';

@Riverpod()
class TempVehiclesDetailsHolder extends _$TempVehiclesDetailsHolder {
  @override
  VehiclesDetails build() => const VehiclesDetails();

  void update(VehiclesDetails Function(VehiclesDetails current) transform) {
    state = transform(state);
  }

  void reset() {
    state = const VehiclesDetails();
  }
}
