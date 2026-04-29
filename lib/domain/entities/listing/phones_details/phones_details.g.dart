// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phones_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PhonesDetails _$PhonesDetailsFromJson(Map<String, dynamic> json) =>
    _PhonesDetails(
      listingId: json['listingId'] as String?,
      phoneBrand: $enumDecodeNullable(_$PhoneBrandEnumMap, json['phoneBrand']),
      phoneCondition: $enumDecodeNullable(
        _$PhoneConditionEnumMap,
        json['phoneCondition'],
      ),
      storage: $enumDecodeNullable(_$PhoneStorageEnumMap, json['storage']),
      color: $enumDecodeNullable(_$PhoneColorEnumMap, json['color']),
      accessoryBrand: $enumDecodeNullable(
        _$AccessoryBrandEnumMap,
        json['accessoryBrand'],
      ),
      accessoryItemType: $enumDecodeNullable(
        _$MobileAccessoryTypeEnumMap,
        json['accessoryItemType'],
      ),
      operator: $enumDecodeNullable(_$MobileOperatorEnumMap, json['operator']),
      membershipType: $enumDecodeNullable(
        _$MembershipTypeEnumMap,
        json['membershipType'],
      ),
      watchBrand: $enumDecodeNullable(_$WatchBrandEnumMap, json['watchBrand']),
      watchStorage: $enumDecodeNullable(
        _$WatchStorageEnumMap,
        json['watchStorage'],
      ),
      bandMaterial: $enumDecodeNullable(
        _$BandMaterialEnumMap,
        json['bandMaterial'],
      ),
      bandColor: $enumDecodeNullable(_$BandColorEnumMap, json['bandColor']),
    );

Map<String, dynamic> _$PhonesDetailsToJson(
  _PhonesDetails instance,
) => <String, dynamic>{
  'listingId': instance.listingId,
  'phoneBrand': _$PhoneBrandEnumMap[instance.phoneBrand],
  'phoneCondition': _$PhoneConditionEnumMap[instance.phoneCondition],
  'storage': _$PhoneStorageEnumMap[instance.storage],
  'color': _$PhoneColorEnumMap[instance.color],
  'accessoryBrand': _$AccessoryBrandEnumMap[instance.accessoryBrand],
  'accessoryItemType': _$MobileAccessoryTypeEnumMap[instance.accessoryItemType],
  'operator': _$MobileOperatorEnumMap[instance.operator],
  'membershipType': _$MembershipTypeEnumMap[instance.membershipType],
  'watchBrand': _$WatchBrandEnumMap[instance.watchBrand],
  'watchStorage': _$WatchStorageEnumMap[instance.watchStorage],
  'bandMaterial': _$BandMaterialEnumMap[instance.bandMaterial],
  'bandColor': _$BandColorEnumMap[instance.bandColor],
};

const _$PhoneBrandEnumMap = {
  PhoneBrand.apple: 'Apple',
  PhoneBrand.samsung: 'Samsung',
  PhoneBrand.huawei: 'Huawei',
  PhoneBrand.xiaomi: 'Xiaomi',
  PhoneBrand.onePlus: 'OnePlus',
  PhoneBrand.oppo: 'Oppo',
  PhoneBrand.vivo: 'Vivo',
  PhoneBrand.realme: 'Realme',
  PhoneBrand.google: 'Google',
  PhoneBrand.motorola: 'Motorola',
  PhoneBrand.nokia: 'Nokia',
  PhoneBrand.sony: 'Sony',
  PhoneBrand.lG: 'LG',
  PhoneBrand.asus: 'Asus',
  PhoneBrand.lenovo: 'Lenovo',
  PhoneBrand.honor: 'Honor',
  PhoneBrand.infinix: 'Infinix',
  PhoneBrand.tecno: 'Tecno',
  PhoneBrand.alcatel: 'Alcatel',
  PhoneBrand.blackberry: 'Blackberry',
  PhoneBrand.hTC: 'HTC',
  PhoneBrand.other: 'Other',
};

const _$PhoneConditionEnumMap = {
  PhoneCondition.new_: 'New',
  PhoneCondition.refurbished: 'Refurbished',
  PhoneCondition.used: 'Used',
};

const _$PhoneStorageEnumMap = {
  PhoneStorage.gb32: 'GB32',
  PhoneStorage.gb64: 'GB64',
  PhoneStorage.gb128: 'GB128',
  PhoneStorage.gb256: 'GB256',
  PhoneStorage.gb512: 'GB512',
  PhoneStorage.tb1: 'TB1',
  PhoneStorage.tb2: 'TB2',
};

const _$PhoneColorEnumMap = {
  PhoneColor.black: 'Black',
  PhoneColor.white: 'White',
  PhoneColor.silver: 'Silver',
  PhoneColor.gold: 'Gold',
  PhoneColor.roseGold: 'RoseGold',
  PhoneColor.red: 'Red',
  PhoneColor.blue: 'Blue',
  PhoneColor.green: 'Green',
  PhoneColor.purple: 'Purple',
  PhoneColor.yellow: 'Yellow',
  PhoneColor.orange: 'Orange',
  PhoneColor.pink: 'Pink',
  PhoneColor.gray: 'Gray',
  PhoneColor.midnightGreen: 'MidnightGreen',
  PhoneColor.sierraBlue: 'SierraBlue',
  PhoneColor.deepPurple: 'DeepPurple',
  PhoneColor.naturalTitanium: 'NaturalTitanium',
  PhoneColor.other: 'Other',
};

const _$AccessoryBrandEnumMap = {
  AccessoryBrand.apple: 'Apple',
  AccessoryBrand.samsung: 'Samsung',
  AccessoryBrand.anker: 'Anker',
  AccessoryBrand.belkin: 'Belkin',
  AccessoryBrand.spigen: 'Spigen',
  AccessoryBrand.otterBox: 'OtterBox',
  AccessoryBrand.uag: 'UAG',
  AccessoryBrand.baseus: 'Baseus',
  AccessoryBrand.xiaomi: 'Xiaomi',
  AccessoryBrand.huawei: 'Huawei',
  AccessoryBrand.jBL: 'JBL',
  AccessoryBrand.sony: 'Sony',
  AccessoryBrand.bose: 'Bose',
  AccessoryBrand.beats: 'Beats',
  AccessoryBrand.sennheiser: 'Sennheiser',
  AccessoryBrand.logitech: 'Logitech',
  AccessoryBrand.other: 'Other',
};

const _$MobileAccessoryTypeEnumMap = {
  MobileAccessoryType.headphones: 'Headphones',
  MobileAccessoryType.earbuds: 'Earbuds',
  MobileAccessoryType.charger: 'Charger',
  MobileAccessoryType.cable: 'Cable',
  MobileAccessoryType.powerBank: 'PowerBank',
  MobileAccessoryType.wirelessCharger: 'WirelessCharger',
  MobileAccessoryType.carCharger: 'CarCharger',
  MobileAccessoryType.carMount: 'CarMount',
  MobileAccessoryType.phoneCase: 'PhoneCase',
  MobileAccessoryType.screenProtector: 'ScreenProtector',
  MobileAccessoryType.selfieStick: 'SelfieStick',
  MobileAccessoryType.ringLight: 'RingLight',
  MobileAccessoryType.tripod: 'Tripod',
  MobileAccessoryType.popSocket: 'PopSocket',
  MobileAccessoryType.memoryCard: 'MemoryCard',
  MobileAccessoryType.otgAdapter: 'OTGAdapter',
  MobileAccessoryType.bluetoothSpeaker: 'BluetoothSpeaker',
  MobileAccessoryType.smartTag: 'SmartTag',
  MobileAccessoryType.stylus: 'Stylus',
  MobileAccessoryType.other: 'Other',
};

const _$MobileOperatorEnumMap = {
  MobileOperator.alfa: 'Alfa',
  MobileOperator.touch: 'Touch',
  MobileOperator.other: 'Other',
};

const _$MembershipTypeEnumMap = {
  MembershipType.postpaid: 'Postpaid',
  MembershipType.prepaid: 'Prepaid',
};

const _$WatchBrandEnumMap = {
  WatchBrand.apple: 'Apple',
  WatchBrand.samsung: 'Samsung',
  WatchBrand.huawei: 'Huawei',
  WatchBrand.xiaomi: 'Xiaomi',
  WatchBrand.garmin: 'Garmin',
  WatchBrand.fitbit: 'Fitbit',
  WatchBrand.amazfit: 'Amazfit',
  WatchBrand.fossil: 'Fossil',
  WatchBrand.suunto: 'Suunto',
  WatchBrand.polar: 'Polar',
  WatchBrand.ticWatch: 'TicWatch',
  WatchBrand.other: 'Other',
};

const _$WatchStorageEnumMap = {
  WatchStorage.gb8: 'GB8',
  WatchStorage.gb16: 'GB16',
  WatchStorage.gb32: 'GB32',
  WatchStorage.other: 'Other',
};

const _$BandMaterialEnumMap = {
  BandMaterial.aluminum: 'Aluminum',
  BandMaterial.stainlessSteel: 'StainlessSteel',
  BandMaterial.titanium: 'Titanium',
  BandMaterial.plastic: 'Plastic',
  BandMaterial.silicone: 'Silicone',
  BandMaterial.leather: 'Leather',
  BandMaterial.nylon: 'Nylon',
  BandMaterial.ceramic: 'Ceramic',
  BandMaterial.other: 'Other',
};

const _$BandColorEnumMap = {
  BandColor.white: 'White',
  BandColor.black: 'Black',
  BandColor.gold: 'Gold',
  BandColor.pink: 'Pink',
  BandColor.gray: 'Gray',
  BandColor.silver: 'Silver',
  BandColor.blue: 'Blue',
  BandColor.green: 'Green',
  BandColor.red: 'Red',
  BandColor.brown: 'Brown',
  BandColor.purple: 'Purple',
  BandColor.other: 'Other',
};
