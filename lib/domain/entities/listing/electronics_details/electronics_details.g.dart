// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'electronics_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ElectronicsDetails _$ElectronicsDetailsFromJson(
  Map<String, dynamic> json,
) => _ElectronicsDetails(
  listingId: json['listingId'] as String?,
  tvBrand: $enumDecodeNullable(_$TVBrandEnumMap, json['tvBrand']),
  tvType: $enumDecodeNullable(_$TVTypeEnumMap, json['tvType']),
  condition: $enumDecodeNullable(
    _$ElectronicsConditionEnumMap,
    json['condition'],
  ),
  screenSize: $enumDecodeNullable(_$ScreenSizeEnumMap, json['screenSize']),
  displayTechnology: $enumDecodeNullable(
    _$DisplayTechnologyEnumMap,
    json['displayTechnology'],
  ),
  audioBrand: $enumDecodeNullable(_$AudioBrandEnumMap, json['audioBrand']),
  kitchenApplianceType: $enumDecodeNullable(
    _$KitchenApplianceTypeEnumMap,
    json['kitchenApplianceType'],
  ),
  coolingHeatingType: $enumDecodeNullable(
    _$CoolingHeatingTypeEnumMap,
    json['coolingHeatingType'],
  ),
  cleaningApplianceType: $enumDecodeNullable(
    _$CleaningApplianceTypeEnumMap,
    json['cleaningApplianceType'],
  ),
  washingMachineBrand: $enumDecodeNullable(
    _$WashingMachineBrandEnumMap,
    json['washingMachineBrand'],
  ),
  computerBrand: $enumDecodeNullable(
    _$ComputerBrandEnumMap,
    json['computerBrand'],
  ),
  computerType: $enumDecodeNullable(
    _$ComputerTypeEnumMap,
    json['computerType'],
  ),
  processor: $enumDecodeNullable(_$ProcessorEnumMap, json['processor']),
  ramSize: $enumDecodeNullable(_$RamSizeEnumMap, json['ramSize']),
  computerScreenSize: $enumDecodeNullable(
    _$ComputerScreenSizeEnumMap,
    json['computerScreenSize'],
  ),
  computerStorage: $enumDecodeNullable(
    _$ComputerStorageEnumMap,
    json['computerStorage'],
  ),
  storageType: $enumDecodeNullable(_$StorageTypeEnumMap, json['storageType']),
  computerColor: $enumDecodeNullable(
    _$ComputerColorEnumMap,
    json['computerColor'],
  ),
  computerAccessoryType: $enumDecodeNullable(
    _$ComputerAccessoryTypeEnumMap,
    json['computerAccessoryType'],
  ),
  cameraBrand: $enumDecodeNullable(_$CameraBrandEnumMap, json['cameraBrand']),
  cameraType: $enumDecodeNullable(_$CameraTypeEnumMap, json['cameraType']),
  gamingBrand: $enumDecodeNullable(_$GamingBrandEnumMap, json['gamingBrand']),
  gamingType: $enumDecodeNullable(_$GamingTypeEnumMap, json['gamingType']),
  compatibleConsole: $enumDecodeNullable(
    _$CompatibleConsoleEnumMap,
    json['compatibleConsole'],
  ),
  gameCondition: $enumDecodeNullable(
    _$GameConditionEnumMap,
    json['gameCondition'],
  ),
  gameGenre: $enumDecodeNullable(_$GameGenreEnumMap, json['gameGenre']),
);

Map<String, dynamic> _$ElectronicsDetailsToJson(
  _ElectronicsDetails instance,
) => <String, dynamic>{
  'listingId': instance.listingId,
  'tvBrand': _$TVBrandEnumMap[instance.tvBrand],
  'tvType': _$TVTypeEnumMap[instance.tvType],
  'condition': _$ElectronicsConditionEnumMap[instance.condition],
  'screenSize': _$ScreenSizeEnumMap[instance.screenSize],
  'displayTechnology': _$DisplayTechnologyEnumMap[instance.displayTechnology],
  'audioBrand': _$AudioBrandEnumMap[instance.audioBrand],
  'kitchenApplianceType':
      _$KitchenApplianceTypeEnumMap[instance.kitchenApplianceType],
  'coolingHeatingType':
      _$CoolingHeatingTypeEnumMap[instance.coolingHeatingType],
  'cleaningApplianceType':
      _$CleaningApplianceTypeEnumMap[instance.cleaningApplianceType],
  'washingMachineBrand':
      _$WashingMachineBrandEnumMap[instance.washingMachineBrand],
  'computerBrand': _$ComputerBrandEnumMap[instance.computerBrand],
  'computerType': _$ComputerTypeEnumMap[instance.computerType],
  'processor': _$ProcessorEnumMap[instance.processor],
  'ramSize': _$RamSizeEnumMap[instance.ramSize],
  'computerScreenSize':
      _$ComputerScreenSizeEnumMap[instance.computerScreenSize],
  'computerStorage': _$ComputerStorageEnumMap[instance.computerStorage],
  'storageType': _$StorageTypeEnumMap[instance.storageType],
  'computerColor': _$ComputerColorEnumMap[instance.computerColor],
  'computerAccessoryType':
      _$ComputerAccessoryTypeEnumMap[instance.computerAccessoryType],
  'cameraBrand': _$CameraBrandEnumMap[instance.cameraBrand],
  'cameraType': _$CameraTypeEnumMap[instance.cameraType],
  'gamingBrand': _$GamingBrandEnumMap[instance.gamingBrand],
  'gamingType': _$GamingTypeEnumMap[instance.gamingType],
  'compatibleConsole': _$CompatibleConsoleEnumMap[instance.compatibleConsole],
  'gameCondition': _$GameConditionEnumMap[instance.gameCondition],
  'gameGenre': _$GameGenreEnumMap[instance.gameGenre],
};

const _$TVBrandEnumMap = {
  TVBrand.samsung: 'Samsung',
  TVBrand.lG: 'LG',
  TVBrand.sony: 'Sony',
  TVBrand.tCL: 'TCL',
  TVBrand.hisense: 'Hisense',
  TVBrand.panasonic: 'Panasonic',
  TVBrand.philips: 'Philips',
  TVBrand.sharp: 'Sharp',
  TVBrand.toshiba: 'Toshiba',
  TVBrand.skyworth: 'Skyworth',
  TVBrand.xiaomi: 'Xiaomi',
  TVBrand.other: 'Other',
};

const _$TVTypeEnumMap = {
  TVType.tVs: 'TVs',
  TVType.tvReceiversAndSatellites: 'TVReceiversAndSatellites',
  TVType.videoPlayers: 'VideoPlayers',
  TVType.other: 'Other',
};

const _$ElectronicsConditionEnumMap = {
  ElectronicsCondition.new_: 'New',
  ElectronicsCondition.refurbished: 'Refurbished',
  ElectronicsCondition.used: 'Used',
};

const _$ScreenSizeEnumMap = {
  ScreenSize.inches20to29: 'Inches20to29',
  ScreenSize.inches30to39: 'Inches30to39',
  ScreenSize.inches40to49: 'Inches40to49',
  ScreenSize.inches50to59: 'Inches50to59',
  ScreenSize.inches60to69: 'Inches60to69',
  ScreenSize.inches70to80: 'Inches70to80',
  ScreenSize.other: 'Other',
};

const _$DisplayTechnologyEnumMap = {
  DisplayTechnology.lED: 'LED',
  DisplayTechnology.lCD: 'LCD',
  DisplayTechnology.oLED: 'OLED',
  DisplayTechnology.qLED: 'QLED',
  DisplayTechnology.other: 'Other',
};

const _$AudioBrandEnumMap = {
  AudioBrand.jBL: 'JBL',
  AudioBrand.sony: 'Sony',
  AudioBrand.bose: 'Bose',
  AudioBrand.samsung: 'Samsung',
  AudioBrand.lG: 'LG',
  AudioBrand.yamaha: 'Yamaha',
  AudioBrand.pioneer: 'Pioneer',
  AudioBrand.harmanKardon: 'HarmanKardon',
  AudioBrand.marshall: 'Marshall',
  AudioBrand.beats: 'Beats',
  AudioBrand.sennheiser: 'Sennheiser',
  AudioBrand.other: 'Other',
};

const _$KitchenApplianceTypeEnumMap = {
  KitchenApplianceType.refrigerator: 'Refrigerator',
  KitchenApplianceType.freezer: 'Freezer',
  KitchenApplianceType.oven: 'Oven',
  KitchenApplianceType.cooktop: 'Cooktop',
  KitchenApplianceType.microwave: 'Microwave',
  KitchenApplianceType.dishwasher: 'Dishwasher',
  KitchenApplianceType.blender: 'Blender',
  KitchenApplianceType.mixer: 'Mixer',
  KitchenApplianceType.toaster: 'Toaster',
  KitchenApplianceType.coffeeMaker: 'CoffeeMaker',
  KitchenApplianceType.kettle: 'Kettle',
  KitchenApplianceType.airFryer: 'AirFryer',
  KitchenApplianceType.foodProcessor: 'FoodProcessor',
  KitchenApplianceType.juicer: 'Juicer',
  KitchenApplianceType.other: 'Other',
};

const _$CoolingHeatingTypeEnumMap = {
  CoolingHeatingType.splitAC: 'SplitAC',
  CoolingHeatingType.windowAC: 'WindowAC',
  CoolingHeatingType.portableAC: 'PortableAC',
  CoolingHeatingType.centralAC: 'CentralAC',
  CoolingHeatingType.fan: 'Fan',
  CoolingHeatingType.heater: 'Heater',
  CoolingHeatingType.airCooler: 'AirCooler',
  CoolingHeatingType.other: 'Other',
};

const _$CleaningApplianceTypeEnumMap = {
  CleaningApplianceType.ironingMachine: 'IroningMachine',
  CleaningApplianceType.vacuumCleaner: 'VacuumCleaner',
  CleaningApplianceType.steamCleaner: 'SteamCleaner',
  CleaningApplianceType.floorPolisher: 'FloorPolisher',
  CleaningApplianceType.other: 'Other',
};

const _$WashingMachineBrandEnumMap = {
  WashingMachineBrand.samsung: 'Samsung',
  WashingMachineBrand.lG: 'LG',
  WashingMachineBrand.bosch: 'Bosch',
  WashingMachineBrand.siemens: 'Siemens',
  WashingMachineBrand.whirlpool: 'Whirlpool',
  WashingMachineBrand.miele: 'Miele',
  WashingMachineBrand.electrolux: 'Electrolux',
  WashingMachineBrand.haier: 'Haier',
  WashingMachineBrand.beko: 'Beko',
  WashingMachineBrand.indesit: 'Indesit',
  WashingMachineBrand.ariston: 'Ariston',
  WashingMachineBrand.other: 'Other',
};

const _$ComputerBrandEnumMap = {
  ComputerBrand.apple: 'Apple',
  ComputerBrand.dell: 'Dell',
  ComputerBrand.hP: 'HP',
  ComputerBrand.lenovo: 'Lenovo',
  ComputerBrand.asus: 'Asus',
  ComputerBrand.acer: 'Acer',
  ComputerBrand.microsoft: 'Microsoft',
  ComputerBrand.samsung: 'Samsung',
  ComputerBrand.huawei: 'Huawei',
  ComputerBrand.mSI: 'MSI',
  ComputerBrand.razer: 'Razer',
  ComputerBrand.toshiba: 'Toshiba',
  ComputerBrand.sony: 'Sony',
  ComputerBrand.other: 'Other',
};

const _$ComputerTypeEnumMap = {
  ComputerType.laptop: 'Laptop',
  ComputerType.tablet: 'Tablet',
  ComputerType.computer: 'Computer',
};

const _$ProcessorEnumMap = {
  Processor.i3: 'i3',
  Processor.i5: 'i5',
  Processor.i7: 'i7',
  Processor.i9: 'i9',
  Processor.ryzen3: 'Ryzen3',
  Processor.ryzen5: 'Ryzen5',
  Processor.ryzen7: 'Ryzen7',
  Processor.ryzen9: 'Ryzen9',
  Processor.m1: 'M1',
  Processor.m2: 'M2',
  Processor.m3: 'M3',
  Processor.pentium: 'Pentium',
  Processor.celeron: 'Celeron',
  Processor.other: 'Other',
};

const _$RamSizeEnumMap = {
  RamSize.gb4: 'GB4',
  RamSize.gb8: 'GB8',
  RamSize.gb12: 'GB12',
  RamSize.gb16: 'GB16',
  RamSize.gb24: 'GB24',
  RamSize.gb32: 'GB32',
  RamSize.gb64: 'GB64',
  RamSize.other: 'Other',
};

const _$ComputerScreenSizeEnumMap = {
  ComputerScreenSize.inches10to10_9: 'Inches10to10_9',
  ComputerScreenSize.inches11to11_9: 'Inches11to11_9',
  ComputerScreenSize.inches12to12_9: 'Inches12to12_9',
  ComputerScreenSize.inches13to13_9: 'Inches13to13_9',
  ComputerScreenSize.inches14to14_9: 'Inches14to14_9',
  ComputerScreenSize.inches15to15_9: 'Inches15to15_9',
  ComputerScreenSize.inches16to16_9: 'Inches16to16_9',
  ComputerScreenSize.inches17Plus: 'Inches17Plus',
  ComputerScreenSize.other: 'Other',
};

const _$ComputerStorageEnumMap = {
  ComputerStorage.gb128: 'GB128',
  ComputerStorage.gb256: 'GB256',
  ComputerStorage.gb512: 'GB512',
  ComputerStorage.tb1: 'TB1',
  ComputerStorage.tb2: 'TB2',
  ComputerStorage.other: 'Other',
};

const _$StorageTypeEnumMap = {
  StorageType.hDD: 'HDD',
  StorageType.sSD: 'SSD',
  StorageType.sSHD: 'SSHD',
  StorageType.nvMe: 'NVMe',
  StorageType.other: 'Other',
};

const _$ComputerColorEnumMap = {
  ComputerColor.black: 'Black',
  ComputerColor.white: 'White',
  ComputerColor.silver: 'Silver',
  ComputerColor.gray: 'Gray',
  ComputerColor.gold: 'Gold',
  ComputerColor.roseGold: 'RoseGold',
  ComputerColor.blue: 'Blue',
  ComputerColor.red: 'Red',
  ComputerColor.green: 'Green',
  ComputerColor.purple: 'Purple',
  ComputerColor.yellow: 'Yellow',
  ComputerColor.orange: 'Orange',
  ComputerColor.other: 'Other',
};

const _$ComputerAccessoryTypeEnumMap = {
  ComputerAccessoryType.computerAccessories: 'ComputerAccessories',
  ComputerAccessoryType.computerParts: 'ComputerParts',
  ComputerAccessoryType.connectivityAndWiring: 'ConnectivityAndWiring',
  ComputerAccessoryType.posSystemsAndMachines: 'POSSystemsAndMachines',
  ComputerAccessoryType.printersAndScanners: 'PrintersAndScanners',
  ComputerAccessoryType.other: 'Other',
};

const _$CameraBrandEnumMap = {
  CameraBrand.canon: 'Canon',
  CameraBrand.nikon: 'Nikon',
  CameraBrand.sony: 'Sony',
  CameraBrand.fujifilm: 'Fujifilm',
  CameraBrand.panasonic: 'Panasonic',
  CameraBrand.olympus: 'Olympus',
  CameraBrand.leica: 'Leica',
  CameraBrand.goPro: 'GoPro',
  CameraBrand.dJI: 'DJI',
  CameraBrand.pentax: 'Pentax',
  CameraBrand.hasselblad: 'Hasselblad',
  CameraBrand.other: 'Other',
};

const _$CameraTypeEnumMap = {
  CameraType.digitalCamera: 'DigitalCamera',
  CameraType.drone: 'Drone',
  CameraType.filmCamera: 'FilmCamera',
  CameraType.filmingEquipment: 'FilmingEquipment',
  CameraType.lensesAndParts: 'LensesAndParts',
  CameraType.securityCamera: 'SecurityCamera',
  CameraType.videoCamera: 'VideoCamera',
  CameraType.other: 'Other',
};

const _$GamingBrandEnumMap = {
  GamingBrand.microsoft: 'Microsoft',
  GamingBrand.sony: 'Sony',
  GamingBrand.nintendo: 'Nintendo',
  GamingBrand.valve: 'Valve',
  GamingBrand.aSUS: 'ASUS',
  GamingBrand.logitech: 'Logitech',
  GamingBrand.razer: 'Razer',
  GamingBrand.other: 'Other',
};

const _$GamingTypeEnumMap = {
  GamingType.console: 'Console',
  GamingType.accessories: 'Accessories',
};

const _$CompatibleConsoleEnumMap = {
  CompatibleConsole.pC: 'PC',
  CompatibleConsole.playStation: 'PlayStation',
  CompatibleConsole.xbox: 'Xbox',
  CompatibleConsole.nintendo: 'Nintendo',
  CompatibleConsole.other: 'Other',
};

const _$GameConditionEnumMap = {
  GameCondition.new_: 'New',
  GameCondition.used: 'Used',
};

const _$GameGenreEnumMap = {
  GameGenre.action: 'Action',
  GameGenre.adventure: 'Adventure',
  GameGenre.rPG: 'RPG',
  GameGenre.shooter: 'Shooter',
  GameGenre.sports: 'Sports',
  GameGenre.racing: 'Racing',
  GameGenre.fighting: 'Fighting',
  GameGenre.horror: 'Horror',
  GameGenre.puzzle: 'Puzzle',
  GameGenre.simulation: 'Simulation',
  GameGenre.strategy: 'Strategy',
  GameGenre.platformer: 'Platformer',
  GameGenre.openWorld: 'OpenWorld',
  GameGenre.battleRoyale: 'BattleRoyale',
  GameGenre.other: 'Other',
};
