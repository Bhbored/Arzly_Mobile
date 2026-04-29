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
