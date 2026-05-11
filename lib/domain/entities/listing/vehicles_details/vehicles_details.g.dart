// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicles_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VehiclesDetails _$VehiclesDetailsFromJson(Map<String, dynamic> json) =>
    _VehiclesDetails(
      carBrand: json['CarBrand'] as String?,
      carModel: json['CarModel'] as String?,
      version: json['Version'] as String?,
      carType: $enumDecodeNullable(_$CarTypeEnumMap, json['CarType']),
      numberOfSeats: (json['NumberOfSeats'] as num?)?.toInt(),
      condition: $enumDecodeNullable(
        _$VehicleConditionEnumMap,
        json['Condition'],
      ),
      horsepower: (json['HorsePower'] as num?)?.toInt(),
      fuelConsumption: (json['FuelConsumptionLPer100Km'] as num?)?.toDouble(),
      kilometers: (json['Kilometers'] as num?)?.toInt(),
      year: (json['Year'] as num?)?.toInt(),
      numberOfOwners: (json['NumberOfOwners'] as num?)?.toInt(),
      fuelType: $enumDecodeNullable(_$FuelTypeEnumMap, json['FuelType']),
      vehicleInterior: $enumDecodeNullable(
        _$VehicleInteriorEnumMap,
        json['VehicleInterior'],
      ),
      vehicleColor: $enumDecodeNullable(
        _$VehicleColorEnumMap,
        json['VehicleColor'],
      ),
      numberOfDoors: (json['NumberOfDoors'] as num?)?.toInt(),
      transmissionType: $enumDecodeNullable(
        _$TransmissionTypeEnumMap,
        json['TransmissionType'],
      ),
      carFeatures: (json['CarFeatures'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$CarFeatureEnumMap, e))
          .toList(),
      airConditioning: $enumDecodeNullable(
        _$AirConditioningEnumMap,
        json['AirConditioning'],
      ),
      motorcycleType: $enumDecodeNullable(
        _$MotorcycleTypeEnumMap,
        json['MotorcycleType'],
      ),
      accessoryType: $enumDecodeNullable(
        _$AccessoryTypeEnumMap,
        json['AccessoryType'],
      ),
      numberOfDigits: $enumDecodeNullable(
        _$PlateDigitsEnumMap,
        json['NumberOfDigits'],
      ),
      truckBrand: $enumDecodeNullable(_$TruckBrandEnumMap, json['TruckBrand']),
      boatType: $enumDecodeNullable(_$BoatTypeEnumMap, json['BoatType']),
    );

Map<String, dynamic> _$VehiclesDetailsToJson(_VehiclesDetails instance) =>
    <String, dynamic>{
      'CarBrand': instance.carBrand,
      'CarModel': instance.carModel,
      'Version': instance.version,
      'CarType': _$CarTypeEnumMap[instance.carType],
      'NumberOfSeats': instance.numberOfSeats,
      'Condition': _$VehicleConditionEnumMap[instance.condition],
      'HorsePower': instance.horsepower,
      'FuelConsumptionLPer100Km': instance.fuelConsumption,
      'Kilometers': instance.kilometers,
      'Year': instance.year,
      'NumberOfOwners': instance.numberOfOwners,
      'FuelType': _$FuelTypeEnumMap[instance.fuelType],
      'VehicleInterior': _$VehicleInteriorEnumMap[instance.vehicleInterior],
      'VehicleColor': _$VehicleColorEnumMap[instance.vehicleColor],
      'NumberOfDoors': instance.numberOfDoors,
      'TransmissionType': _$TransmissionTypeEnumMap[instance.transmissionType],
      'CarFeatures': instance.carFeatures
          ?.map((e) => _$CarFeatureEnumMap[e]!)
          .toList(),
      'AirConditioning': _$AirConditioningEnumMap[instance.airConditioning],
      'MotorcycleType': _$MotorcycleTypeEnumMap[instance.motorcycleType],
      'AccessoryType': _$AccessoryTypeEnumMap[instance.accessoryType],
      'NumberOfDigits': _$PlateDigitsEnumMap[instance.numberOfDigits],
      'TruckBrand': _$TruckBrandEnumMap[instance.truckBrand],
      'BoatType': _$BoatTypeEnumMap[instance.boatType],
    };

const _$CarTypeEnumMap = {
  CarType.convertible: 'Convertible',
  CarType.estate: 'Estate',
  CarType.hatchback: 'Hatchback',
  CarType.mpv: 'MPV',
  CarType.pickup: 'Pickup',
  CarType.sedan: 'Sedan',
  CarType.smallCityCar: 'SmallCityCar',
  CarType.sportsCoupe: 'SportsCoupe',
  CarType.suv: 'SUV',
  CarType.vanBus: 'VanBus',
  CarType.classicCar: 'ClassicCar',
  CarType.other: 'Other',
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

const _$VehicleInteriorEnumMap = {
  VehicleInterior.fabric: 'Fabric',
  VehicleInterior.fullLeather: 'FullLeather',
  VehicleInterior.partLeather: 'PartLeather',
  VehicleInterior.velour: 'Velour',
  VehicleInterior.alcantara: 'Alcantara',
  VehicleInterior.suede: 'Suede',
  VehicleInterior.other: 'Other',
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

const _$AirConditioningEnumMap = {
  AirConditioning.none: 'None',
  AirConditioning.manual: 'Manual',
  AirConditioning.automatic: 'Automatic',
  AirConditioning.automatic2Zones: 'Automatic2Zones',
  AirConditioning.automatic3Zones: 'Automatic3Zones',
  AirConditioning.automatic4Zones: 'Automatic4Zones',
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
