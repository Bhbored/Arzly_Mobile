import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum SupplementType {
  @JsonValue('BCAA')
  bCAA,
  @JsonValue('Creatine')
  creatine,
  @JsonValue('FatBurner')
  fatBurner,
  @JsonValue('ProteinPowder')
  proteinPowder,
  @JsonValue('VitaminsAndMinerals')
  vitaminsAndMinerals,
  @JsonValue('Other')
  other,
}
