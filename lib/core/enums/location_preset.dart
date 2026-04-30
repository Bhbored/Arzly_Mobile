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
