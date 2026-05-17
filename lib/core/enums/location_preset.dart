import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum LocationPreset {
  @JsonValue('Beirut')
  beirut,

  @JsonValue('JbeilMountLebanon')
  jbeilMountLebanon,
  @JsonValue('KeserwanMountLebanon')
  keserwanMountLebanon,
  @JsonValue('MatnMountLebanon')
  matnMountLebanon,
  @JsonValue('BaabdaMountLebanon')
  baabdaMountLebanon,
  @JsonValue('AleyMountLebanon')
  aleyMountLebanon,
  @JsonValue('ChoufMountLebanon')
  choufMountLebanon,

  @JsonValue('AkkarNorthLebanon')
  akkarNorthLebanon,
  @JsonValue('MiniehDanniyehNorthLebanon')
  miniehDanniyehNorthLebanon,
  @JsonValue('ZghartaNorthLebanon')
  zghartaNorthLebanon,
  @JsonValue('TripoliNorthLebanon')
  tripoliNorthLebanon,
  @JsonValue('KouraNorthLebanon')
  kouraNorthLebanon,
  @JsonValue('BatrounNorthLebanon')
  batrounNorthLebanon,
  @JsonValue('BcharreNorthLebanon')
  bcharreNorthLebanon,

  @JsonValue('SaidaSouthLebanon')
  saidaSouthLebanon,
  @JsonValue('JezzineSouthLebanon')
  jezzineSouthLebanon,
  @JsonValue('TyreSouthLebanon')
  tyreSouthLebanon,

  @JsonValue('ZahleBeirqaa')
  zahleBeirqaa,
  @JsonValue('WestBeqaaBeirqaa')
  westBeqaaBeirqaa,
  @JsonValue('RashayaBeirqaa')
  rashayaBeirqaa,

  @JsonValue('NabatiehNabatieh')
  nabatiehNabatieh,
  @JsonValue('MarjeyounNabatieh')
  marjeyounNabatieh,
  @JsonValue('HasbayaNabatieh')
  hasbayaNabatieh,
  @JsonValue('BintJbeilNabatieh')
  bintJbeilNabatieh,

  @JsonValue('BaalbekBaalbekHermel')
  baalbekBaalbekHermel,
  @JsonValue('HermelBaalbekHermel')
  hermelBaalbekHermel,
}

extension LocationPresetDisplay on LocationPreset {
  static const String fieldTitle = 'Area';

  String get label => switch (this) {
    LocationPreset.beirut => 'Beirut',
    LocationPreset.jbeilMountLebanon => 'Jbeil, Mount Lebanon',
    LocationPreset.keserwanMountLebanon => 'Keserwan, Mount Lebanon',
    LocationPreset.matnMountLebanon => 'Matn, Mount Lebanon',
    LocationPreset.baabdaMountLebanon => 'Baabda, Mount Lebanon',
    LocationPreset.aleyMountLebanon => 'Aley, Mount Lebanon',
    LocationPreset.choufMountLebanon => 'Chouf, Mount Lebanon',
    LocationPreset.akkarNorthLebanon => 'Akkar, North Lebanon',
    LocationPreset.miniehDanniyehNorthLebanon =>
      'Minieh-Danniyeh, North Lebanon',
    LocationPreset.zghartaNorthLebanon => 'Zgharta, North Lebanon',
    LocationPreset.tripoliNorthLebanon => 'Tripoli, North Lebanon',
    LocationPreset.kouraNorthLebanon => 'Koura, North Lebanon',
    LocationPreset.batrounNorthLebanon => 'Batroun, North Lebanon',
    LocationPreset.bcharreNorthLebanon => 'Bcharre, North Lebanon',
    LocationPreset.saidaSouthLebanon => 'Saida, South Lebanon',
    LocationPreset.jezzineSouthLebanon => 'Jezzine, South Lebanon',
    LocationPreset.tyreSouthLebanon => 'Tyre, South Lebanon',
    LocationPreset.zahleBeirqaa => 'Zahle, Beqaa',
    LocationPreset.westBeqaaBeirqaa => 'West Beqaa, Beqaa',
    LocationPreset.rashayaBeirqaa => 'Rashaya, Beqaa',
    LocationPreset.nabatiehNabatieh => 'Nabatieh, Nabatieh',
    LocationPreset.marjeyounNabatieh => 'Marjeyoun, Nabatieh',
    LocationPreset.hasbayaNabatieh => 'Hasbaya, Nabatieh',
    LocationPreset.bintJbeilNabatieh => 'Bint Jbeil, Nabatieh',
    LocationPreset.baalbekBaalbekHermel => 'Baalbek, Baalbek-Hermel',
    LocationPreset.hermelBaalbekHermel => 'Hermel, Baalbek-Hermel',
  };
}
