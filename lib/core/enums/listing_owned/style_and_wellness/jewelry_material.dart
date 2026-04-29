import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum JewelryMaterial {
  @JsonValue('Gold')
  gold,
  @JsonValue('Silver')
  silver,
  @JsonValue('Platinum')
  platinum,
  @JsonValue('Diamond')
  diamond,
  @JsonValue('Pearl')
  pearl,
  @JsonValue('StainlessSteel')
  stainlessSteel,
  @JsonValue('Leather')
  leather,
  @JsonValue('Wood')
  wood,
  @JsonValue('Plastic')
  plastic,
  @JsonValue('Other')
  other,
}
