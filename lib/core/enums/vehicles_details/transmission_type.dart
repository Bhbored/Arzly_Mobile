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
