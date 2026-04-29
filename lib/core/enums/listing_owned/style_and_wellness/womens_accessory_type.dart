import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum WomensAccessoryType {
  @JsonValue('Bags')
  bags,
  @JsonValue('Handbags')
  handbags,
  @JsonValue('Clutches')
  clutches,
  @JsonValue('Backpacks')
  backpacks,
  @JsonValue('Wallets')
  wallets,
  @JsonValue('Hats')
  hats,
  @JsonValue('Scarves')
  scarves,
  @JsonValue('Sunglasses')
  sunglasses,
  @JsonValue('Belts')
  belts,
  @JsonValue('Gloves')
  gloves,
  @JsonValue('HairAccessories')
  hairAccessories,
  @JsonValue('Keychains')
  keychains,
  @JsonValue('Umbrellas')
  umbrellas,
  @JsonValue('Other')
  other,
}
