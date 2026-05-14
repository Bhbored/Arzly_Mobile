import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum TruckBrand {
  @JsonValue('Mercedes')
  mercedes,
  @JsonValue('Volvo')
  volvo,
  @JsonValue('Scania')
  scania,
  @JsonValue('MAN')
  man,
  @JsonValue('Iveco')
  iveco,
  @JsonValue('Renault')
  renault,
  @JsonValue('DAF')
  dAF,
  @JsonValue('Freightliner')
  freightliner,
  @JsonValue('Kenworth')
  kenworth,
  @JsonValue('Peterbilt')
  peterbilt,
  @JsonValue('Mack')
  mack,
  @JsonValue('International')
  international,
  @JsonValue('Hino')
  hino,
  @JsonValue('Isuzu')
  isuzu,
  @JsonValue('Mitsubishi')
  mitsubishi,
  @JsonValue('Ford')
  ford,
  @JsonValue('Chevrolet')
  chevrolet,
  @JsonValue('GMC')
  gMC,
  @JsonValue('Ram')
  ram,
  @JsonValue('Other')
  other,
}

extension TruckBrandDisplay on TruckBrand {
  String get label => switch (this) {
        TruckBrand.mercedes => 'Mercedes',
        TruckBrand.volvo => 'Volvo',
        TruckBrand.scania => 'Scania',
        TruckBrand.man => 'MAN',
        TruckBrand.iveco => 'Iveco',
        TruckBrand.renault => 'Renault',
        TruckBrand.dAF => 'DAF',
        TruckBrand.freightliner => 'Freightliner',
        TruckBrand.kenworth => 'Kenworth',
        TruckBrand.peterbilt => 'Peterbilt',
        TruckBrand.mack => 'Mack',
        TruckBrand.international => 'International',
        TruckBrand.hino => 'Hino',
        TruckBrand.isuzu => 'Isuzu',
        TruckBrand.mitsubishi => 'Mitsubishi',
        TruckBrand.ford => 'Ford',
        TruckBrand.chevrolet => 'Chevrolet',
        TruckBrand.gMC => 'GMC',
        TruckBrand.ram => 'Ram',
        TruckBrand.other => 'Other',
      };
}
