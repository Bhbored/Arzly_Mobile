import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum CommercialFeature {
  @JsonValue('AirConditioning')
  airConditioning,
  @JsonValue('CoveredParking')
  coveredParking,
  @JsonValue('Security')
  security,
  @JsonValue('Storage')
  storage,
  @JsonValue('Elevator')
  elevator,
  @JsonValue('LoadingDock')
  loadingDock,
  @JsonValue('ReceptionArea')
  receptionArea,
  @JsonValue('Pantry')
  pantry,
}
