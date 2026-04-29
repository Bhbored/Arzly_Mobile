import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum SupplementBrand {
  @JsonValue('GNC')
  gNC,
  @JsonValue('Armal')
  armal,
  @JsonValue('OptimumNutrition')
  optimumNutrition,
  @JsonValue('BPI')
  bPI,
  @JsonValue('MuscleTech')
  muscleTech,
  @JsonValue('Dymatize')
  dymatize,
  @JsonValue('Cellucor')
  cellucor,
  @JsonValue('UniversalNutrition')
  universalNutrition,
  @JsonValue('MyProtein')
  myProtein,
  @JsonValue('Isopure')
  isopure,
  @JsonValue('Other')
  other,
}
