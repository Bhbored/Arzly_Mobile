import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum TransmissionType {
  @JsonValue('Automatic')
  automatic,
  @JsonValue('Manual')
  manual,
  @JsonValue('CVT')
  cVT,
  @JsonValue('SemiAutomatic')
  semiAutomatic,
  @JsonValue('DualClutch')
  dualClutch,
  @JsonValue('Other')
  other,
}

extension TransmissionTypeDisplay on TransmissionType {
  String get label => switch (this) {
        TransmissionType.automatic => 'Automatic',
        TransmissionType.manual => 'Manual',
        TransmissionType.cVT => 'CVT',
        TransmissionType.semiAutomatic => 'Semi-automatic',
        TransmissionType.dualClutch => 'Dual-clutch',
        TransmissionType.other => 'Other',
      };
}
