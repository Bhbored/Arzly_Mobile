import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum BandMaterial {
  @JsonValue('Aluminum')
  aluminum,
  @JsonValue('StainlessSteel')
  stainlessSteel,
  @JsonValue('Titanium')
  titanium,
  @JsonValue('Plastic')
  plastic,
  @JsonValue('Silicone')
  silicone,
  @JsonValue('Leather')
  leather,
  @JsonValue('Nylon')
  nylon,
  @JsonValue('Ceramic')
  ceramic,
  @JsonValue('Other')
  other,
}
