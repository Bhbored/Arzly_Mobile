import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum CleaningApplianceType {
  @JsonValue('IroningMachine')
  ironingMachine,
  @JsonValue('VacuumCleaner')
  vacuumCleaner,
  @JsonValue('SteamCleaner')
  steamCleaner,
  @JsonValue('FloorPolisher')
  floorPolisher,
  @JsonValue('Other')
  other,
}
