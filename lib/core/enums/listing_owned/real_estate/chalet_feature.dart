import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum ChaletFeature {
  @JsonValue('Balcony')
  balcony,
  @JsonValue('BBQArea')
  bbqArea,
  @JsonValue('BeachAccess')
  beachAccess,
  @JsonValue('Fireplace')
  fireplace,
  @JsonValue('Garden')
  garden,
  @JsonValue('Jacuzzi')
  jacuzzi,
  @JsonValue('MountainView')
  mountainView,
  @JsonValue('OutdoorSeating')
  outdoorSeating,
  @JsonValue('Pool')
  pool,
  @JsonValue('PrivateEntrance')
  privateEntrance,
  @JsonValue('SeaView')
  seaView,
  @JsonValue('SkiAccess')
  skiAccess,
  @JsonValue('Terrace')
  terrace,
  @JsonValue('WoodenCabin')
  woodenCabin,
}
