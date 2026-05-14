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

extension CommercialFeatureDisplay on CommercialFeature {
  String get label => switch (this) {
    CommercialFeature.airConditioning => 'Air conditioning',
    CommercialFeature.coveredParking => 'Covered parking',
    CommercialFeature.security => 'Security',
    CommercialFeature.storage => 'Storage',
    CommercialFeature.elevator => 'Elevator',
    CommercialFeature.loadingDock => 'Loading dock',
    CommercialFeature.receptionArea => 'Reception area',
    CommercialFeature.pantry => 'Pantry',
  };
}
