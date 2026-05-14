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

extension ChaletFeatureDisplay on ChaletFeature {
  String get label => switch (this) {
        ChaletFeature.balcony => 'Balcony',
        ChaletFeature.bbqArea => 'BBQ area',
        ChaletFeature.beachAccess => 'Beach access',
        ChaletFeature.fireplace => 'Fireplace',
        ChaletFeature.garden => 'Garden',
        ChaletFeature.jacuzzi => 'Jacuzzi',
        ChaletFeature.mountainView => 'Mountain view',
        ChaletFeature.outdoorSeating => 'Outdoor seating',
        ChaletFeature.pool => 'Pool',
        ChaletFeature.privateEntrance => 'Private entrance',
        ChaletFeature.seaView => 'Sea view',
        ChaletFeature.skiAccess => 'Ski access',
        ChaletFeature.terrace => 'Terrace',
        ChaletFeature.woodenCabin => 'Wooden cabin',
      };
}
