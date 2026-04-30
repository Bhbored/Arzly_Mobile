// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicles_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VehiclesDetails _$VehiclesDetailsFromJson(
  Map<String, dynamic> json,
) => _VehiclesDetails(
  listingId: json['listingId'] as String?,
  carBrand: $enumDecodeNullable(_$CarBrandEnumMap, json['carBrand']),
  version: json['version'] as String?,
  condition: $enumDecodeNullable(_$VehicleConditionEnumMap, json['condition']),
  kilometers: (json['kilometers'] as num?)?.toInt(),
  year: (json['year'] as num?)?.toInt(),
  fuelType: $enumDecodeNullable(_$FuelTypeEnumMap, json['fuelType']),
  vehicleColor: $enumDecodeNullable(
    _$VehicleColorEnumMap,
    json['vehicleColor'],
  ),
  numberOfDoors: (json['numberOfDoors'] as num?)?.toInt(),
  transmissionType: $enumDecodeNullable(
    _$TransmissionTypeEnumMap,
    json['transmissionType'],
  ),
  carFeatures: (json['carFeatures'] as List<dynamic>?)
      ?.map((e) => $enumDecode(_$CarFeatureEnumMap, e))
      .toList(),
  motorcycleType: $enumDecodeNullable(
    _$MotorcycleTypeEnumMap,
    json['motorcycleType'],
  ),
  accessoryType: $enumDecodeNullable(
    _$AccessoryTypeEnumMap,
    json['accessoryType'],
  ),
  vehicleType: $enumDecodeNullable(_$VehicleTypeEnumMap, json['vehicleType']),
  numberOfDigits: $enumDecodeNullable(
    _$PlateDigitsEnumMap,
    json['numberOfDigits'],
  ),
  truckBrand: $enumDecodeNullable(_$TruckBrandEnumMap, json['truckBrand']),
  boatType: $enumDecodeNullable(_$BoatTypeEnumMap, json['boatType']),
);

Map<String, dynamic> _$VehiclesDetailsToJson(_VehiclesDetails instance) =>
    <String, dynamic>{
      'listingId': instance.listingId,
      'carBrand': _$CarBrandEnumMap[instance.carBrand],
      'version': instance.version,
      'condition': _$VehicleConditionEnumMap[instance.condition],
      'kilometers': instance.kilometers,
      'year': instance.year,
      'fuelType': _$FuelTypeEnumMap[instance.fuelType],
      'vehicleColor': _$VehicleColorEnumMap[instance.vehicleColor],
      'numberOfDoors': instance.numberOfDoors,
      'transmissionType': _$TransmissionTypeEnumMap[instance.transmissionType],
      'carFeatures': instance.carFeatures
          ?.map((e) => _$CarFeatureEnumMap[e]!)
          .toList(),
      'motorcycleType': _$MotorcycleTypeEnumMap[instance.motorcycleType],
      'accessoryType': _$AccessoryTypeEnumMap[instance.accessoryType],
      'vehicleType': _$VehicleTypeEnumMap[instance.vehicleType],
      'numberOfDigits': _$PlateDigitsEnumMap[instance.numberOfDigits],
      'truckBrand': _$TruckBrandEnumMap[instance.truckBrand],
      'boatType': _$BoatTypeEnumMap[instance.boatType],
    };

const _$CarBrandEnumMap = {
  CarBrand.toyota: 'Toyota',
  CarBrand.nissan: 'Nissan',
  CarBrand.honda: 'Honda',
  CarBrand.hyundai: 'Hyundai',
  CarBrand.kia: 'Kia',
  CarBrand.bMW: 'BMW',
  CarBrand.mercedes: 'Mercedes',
  CarBrand.audi: 'Audi',
  CarBrand.volkswagen: 'Volkswagen',
  CarBrand.ford: 'Ford',
  CarBrand.chevrolet: 'Chevrolet',
  CarBrand.gMC: 'GMC',
  CarBrand.mitsubishi: 'Mitsubishi',
  CarBrand.subaru: 'Subaru',
  CarBrand.mazda: 'Mazda',
  CarBrand.lexus: 'Lexus',
  CarBrand.infiniti: 'Infiniti',
  CarBrand.acura: 'Acura',
  CarBrand.landRover: 'LandRover',
  CarBrand.jaguar: 'Jaguar',
  CarBrand.porsche: 'Porsche',
  CarBrand.volvo: 'Volvo',
  CarBrand.renault: 'Renault',
  CarBrand.peugeot: 'Peugeot',
  CarBrand.citroen: 'Citroen',
  CarBrand.fiat: 'Fiat',
  CarBrand.jeep: 'Jeep',
  CarBrand.dodge: 'Dodge',
  CarBrand.chrysler: 'Chrysler',
  CarBrand.cadillac: 'Cadillac',
  CarBrand.lincoln: 'Lincoln',
  CarBrand.mini: 'Mini',
  CarBrand.smart: 'Smart',
  CarBrand.other: 'Other',
};

const _$VehicleConditionEnumMap = {
  VehicleCondition.new_: 'New',
  VehicleCondition.used: 'Used',
};

const _$FuelTypeEnumMap = {
  FuelType.gasoline: 'Gasoline',
  FuelType.diesel: 'Diesel',
  FuelType.electric: 'Electric',
  FuelType.hybrid: 'Hybrid',
  FuelType.plugInHybrid: 'PlugInHybrid',
  FuelType.cNG: 'CNG',
  FuelType.lPG: 'LPG',
  FuelType.other: 'Other',
};

const _$VehicleColorEnumMap = {
  VehicleColor.black: 'Black',
  VehicleColor.white: 'White',
  VehicleColor.silver: 'Silver',
  VehicleColor.gray: 'Gray',
  VehicleColor.red: 'Red',
  VehicleColor.blue: 'Blue',
  VehicleColor.green: 'Green',
  VehicleColor.yellow: 'Yellow',
  VehicleColor.orange: 'Orange',
  VehicleColor.brown: 'Brown',
  VehicleColor.beige: 'Beige',
  VehicleColor.gold: 'Gold',
  VehicleColor.purple: 'Purple',
  VehicleColor.maroon: 'Maroon',
  VehicleColor.champagne: 'Champagne',
  VehicleColor.other: 'Other',
};

const _$TransmissionTypeEnumMap = {
  TransmissionType.automatic: 'Automatic',
  TransmissionType.manual: 'Manual',
  TransmissionType.cVT: 'CVT',
  TransmissionType.semiAutomatic: 'SemiAutomatic',
  TransmissionType.dualClutch: 'DualClutch',
  TransmissionType.other: 'Other',
};

const _$CarFeatureEnumMap = {
  CarFeature.aBS: 'ABS',
  CarFeature.airbags: 'Airbags',
  CarFeature.parkingSensors: 'ParkingSensors',
  CarFeature.backupCamera: 'BackupCamera',
  CarFeature.blindSpotMonitor: 'BlindSpotMonitor',
  CarFeature.laneDepartureWarning: 'LaneDepartureWarning',
  CarFeature.forwardCollisionWarning: 'ForwardCollisionWarning',
  CarFeature.adaptiveCruiseControl: 'AdaptiveCruiseControl',
  CarFeature.tractionControl: 'TractionControl',
  CarFeature.stabilityControl: 'StabilityControl',
  CarFeature.keylessEntry: 'KeylessEntry',
  CarFeature.pushButtonStart: 'PushButtonStart',
  CarFeature.heatedSeats: 'HeatedSeats',
  CarFeature.cooledSeats: 'CooledSeats',
  CarFeature.powerSeats: 'PowerSeats',
  CarFeature.memorySeats: 'MemorySeats',
  CarFeature.heatedSteeringWheel: 'HeatedSteeringWheel',
  CarFeature.sunroof: 'Sunroof',
  CarFeature.moonroof: 'Moonroof',
  CarFeature.panoramicRoof: 'PanoramicRoof',
  CarFeature.leatherSeats: 'LeatherSeats',
  CarFeature.dualZoneClimateControl: 'DualZoneClimateControl',
  CarFeature.rearACVents: 'RearACVents',
  CarFeature.cruiseControl: 'CruiseControl',
  CarFeature.touchscreen: 'Touchscreen',
  CarFeature.navigation: 'Navigation',
  CarFeature.bluetooth: 'Bluetooth',
  CarFeature.appleCarPlay: 'AppleCarPlay',
  CarFeature.androidAuto: 'AndroidAuto',
  CarFeature.usbPorts: 'USBPorts',
  CarFeature.wirelessCharging: 'WirelessCharging',
  CarFeature.premiumAudio: 'PremiumAudio',
  CarFeature.rearEntertainment: 'RearEntertainment',
  CarFeature.alloyWheels: 'AlloyWheels',
  CarFeature.lEDHeadlights: 'LEDHeadlights',
  CarFeature.fogLights: 'FogLights',
  CarFeature.roofRails: 'RoofRails',
  CarFeature.spoiler: 'Spoiler',
  CarFeature.tintedWindows: 'TintedWindows',
  CarFeature.powerMirrors: 'PowerMirrors',
  CarFeature.powerTrunk: 'PowerTrunk',
  CarFeature.remoteStart: 'RemoteStart',
  CarFeature.garageDoorOpener: 'GarageDoorOpener',
  CarFeature.paddleShifters: 'PaddleShifters',
  CarFeature.sportMode: 'SportMode',
  CarFeature.ecoMode: 'EcoMode',
  CarFeature.fourWheelDrive: 'FourWheelDrive',
  CarFeature.diffLock: 'DiffLock',
};

const _$MotorcycleTypeEnumMap = {
  MotorcycleType.atv: 'ATV',
  MotorcycleType.motorcycle: 'Motorcycle',
  MotorcycleType.buggy: 'Buggy',
  MotorcycleType.other: 'other',
};

const _$AccessoryTypeEnumMap = {
  AccessoryType.tires: 'Tires',
  AccessoryType.rims: 'Rims',
  AccessoryType.soundSystem: 'SoundSystem',
  AccessoryType.screens: 'Screens',
  AccessoryType.spoilers: 'Spoilers',
  AccessoryType.lights: 'Lights',
  AccessoryType.seatCovers: 'SeatCovers',
  AccessoryType.floorMats: 'FloorMats',
  AccessoryType.roofRack: 'RoofRack',
  AccessoryType.towHitch: 'TowHitch',
  AccessoryType.phoneHolder: 'PhoneHolder',
  AccessoryType.charger: 'Charger',
  AccessoryType.dashboardCamera: 'DashboardCamera',
  AccessoryType.parkingSensors: 'ParkingSensors',
  AccessoryType.other: 'Other',
};

const _$VehicleTypeEnumMap = {
  VehicleType.cars: 'Cars',
  VehicleType.motorcycles: 'Motorcycles',
  VehicleType.trucks: 'Trucks',
  VehicleType.buses: 'Buses',
  VehicleType.other: 'Other',
};

const _$PlateDigitsEnumMap = {
  PlateDigits.three: 'Three',
  PlateDigits.four: 'Four',
  PlateDigits.five: 'Five',
  PlateDigits.six: 'Six',
  PlateDigits.seven: 'Seven',
};

const _$TruckBrandEnumMap = {
  TruckBrand.mercedes: 'Mercedes',
  TruckBrand.volvo: 'Volvo',
  TruckBrand.scania: 'Scania',
  TruckBrand.man: 'MAN',
  TruckBrand.iveco: 'Iveco',
  TruckBrand.renault: 'Renault',
  TruckBrand.dAF: 'DAF',
  TruckBrand.freightliner: 'Freightliner',
  TruckBrand.kenworth: 'Kenworth',
  TruckBrand.peterbilt: 'Peterbilt',
  TruckBrand.mack: 'Mack',
  TruckBrand.international: 'International',
  TruckBrand.hino: 'Hino',
  TruckBrand.isuzu: 'Isuzu',
  TruckBrand.mitsubishi: 'Mitsubishi',
  TruckBrand.ford: 'Ford',
  TruckBrand.chevrolet: 'Chevrolet',
  TruckBrand.gMC: 'GMC',
  TruckBrand.ram: 'Ram',
  TruckBrand.other: 'Other',
};

const _$BoatTypeEnumMap = {
  BoatType.jetSki: 'JetSki',
  BoatType.motorboat: 'Motorboat',
  BoatType.sailboat: 'Sailboat',
  BoatType.other: 'Other',
};
