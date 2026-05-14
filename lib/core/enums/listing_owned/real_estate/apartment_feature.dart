import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum ApartmentFeature {
  @JsonValue('Electricity24x7')
  electricity24x7,
  @JsonValue('Balcony')
  balcony,
  @JsonValue('BuiltInWardrobes')
  builtInWardrobes,
  @JsonValue('CentralAC')
  centralAC,
  @JsonValue('CoveredParking')
  coveredParking,
  @JsonValue('DriverRoom')
  driverRoom,
  @JsonValue('Elevator')
  elevator,
  @JsonValue('Garden')
  garden,
  @JsonValue('Gym')
  gym,
  @JsonValue('Intercom')
  intercom,
  @JsonValue('KitchenAppliances')
  kitchenAppliances,
  @JsonValue('LaundryRoom')
  laundryRoom,
  @JsonValue('MaidRoom')
  maidRoom,
  @JsonValue('PetsAllowed')
  petsAllowed,
  @JsonValue('Pool')
  pool,
  @JsonValue('Rooftop')
  rooftop,
  @JsonValue('Security')
  security,
  @JsonValue('Storage')
  storage,
  @JsonValue('ViewOfCity')
  viewOfCity,
  @JsonValue('ViewOfSea')
  viewOfSea,
  @JsonValue('WalkInCloset')
  walkInCloset,
}

extension ApartmentFeatureDisplay on ApartmentFeature {
  String get label => switch (this) {
        ApartmentFeature.electricity24x7 => '24/7 electricity',
        ApartmentFeature.balcony => 'Balcony',
        ApartmentFeature.builtInWardrobes => 'Built-in wardrobes',
        ApartmentFeature.centralAC => 'Central A/C',
        ApartmentFeature.coveredParking => 'Covered parking',
        ApartmentFeature.driverRoom => 'Driver room',
        ApartmentFeature.elevator => 'Elevator',
        ApartmentFeature.garden => 'Garden',
        ApartmentFeature.gym => 'Gym',
        ApartmentFeature.intercom => 'Intercom',
        ApartmentFeature.kitchenAppliances => 'Kitchen appliances',
        ApartmentFeature.laundryRoom => 'Laundry room',
        ApartmentFeature.maidRoom => 'Maid room',
        ApartmentFeature.petsAllowed => 'Pets allowed',
        ApartmentFeature.pool => 'Pool',
        ApartmentFeature.rooftop => 'Rooftop',
        ApartmentFeature.security => 'Security',
        ApartmentFeature.storage => 'Storage',
        ApartmentFeature.viewOfCity => 'City view',
        ApartmentFeature.viewOfSea => 'Sea view',
        ApartmentFeature.walkInCloset => 'Walk-in closet',
      };
}
