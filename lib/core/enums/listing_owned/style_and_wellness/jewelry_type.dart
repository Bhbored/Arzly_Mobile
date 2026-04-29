import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum JewelryType {
  @JsonValue('Bracelets')
  bracelets,
  @JsonValue('Earrings')
  earrings,
  @JsonValue('Necklaces')
  necklaces,
  @JsonValue('Rings')
  rings,
  @JsonValue('Anklets')
  anklets,
  @JsonValue('Brooches')
  brooches,
  @JsonValue('Pendants')
  pendants,
  @JsonValue('Chains')
  chains,
  @JsonValue('Sets')
  sets,
  @JsonValue('Other')
  other,
}
