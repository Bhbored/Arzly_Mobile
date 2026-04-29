import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum OutdoorType {
  @JsonValue('Camping')
  camping,
  @JsonValue('FishingEquipment')
  fishingEquipment,
  @JsonValue('OutdoorEquipment')
  outdoorEquipment,
  @JsonValue('Other')
  other,
}
