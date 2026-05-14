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

extension BandMaterialDisplay on BandMaterial {
  String get label => switch (this) {
        BandMaterial.aluminum => 'Aluminum',
        BandMaterial.stainlessSteel => 'Stainless steel',
        BandMaterial.titanium => 'Titanium',
        BandMaterial.plastic => 'Plastic',
        BandMaterial.silicone => 'Silicone',
        BandMaterial.leather => 'Leather',
        BandMaterial.nylon => 'Nylon',
        BandMaterial.ceramic => 'Ceramic',
        BandMaterial.other => 'Other',
      };
}
