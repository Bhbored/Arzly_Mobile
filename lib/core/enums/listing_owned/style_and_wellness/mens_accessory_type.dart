import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum MensAccessoryType {
  @JsonValue('Belts')
  belts,
  @JsonValue('Wallets')
  wallets,
  @JsonValue('Hats')
  hats,
  @JsonValue('Caps')
  caps,
  @JsonValue('Sunglasses')
  sunglasses,
  @JsonValue('Scarves')
  scarves,
  @JsonValue('Gloves')
  gloves,
  @JsonValue('Ties')
  ties,
  @JsonValue('BowTies')
  bowTies,
  @JsonValue('Cufflinks')
  cufflinks,
  @JsonValue('Bags')
  bags,
  @JsonValue('Backpacks')
  backpacks,
  @JsonValue('Keychains')
  keychains,
  @JsonValue('Umbrellas')
  umbrellas,
  @JsonValue('Other')
  other,
}
