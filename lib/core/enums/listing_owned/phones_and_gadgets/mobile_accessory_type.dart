import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum MobileAccessoryType {
  @JsonValue('Headphones')
  headphones,
  @JsonValue('Earbuds')
  earbuds,
  @JsonValue('Charger')
  charger,
  @JsonValue('Cable')
  cable,
  @JsonValue('PowerBank')
  powerBank,
  @JsonValue('WirelessCharger')
  wirelessCharger,
  @JsonValue('CarCharger')
  carCharger,
  @JsonValue('CarMount')
  carMount,
  @JsonValue('PhoneCase')
  phoneCase,
  @JsonValue('ScreenProtector')
  screenProtector,
  @JsonValue('SelfieStick')
  selfieStick,
  @JsonValue('RingLight')
  ringLight,
  @JsonValue('Tripod')
  tripod,
  @JsonValue('PopSocket')
  popSocket,
  @JsonValue('MemoryCard')
  memoryCard,
  @JsonValue('OTGAdapter')
  otgAdapter,
  @JsonValue('BluetoothSpeaker')
  bluetoothSpeaker,
  @JsonValue('SmartTag')
  smartTag,
  @JsonValue('Stylus')
  stylus,
  @JsonValue('Other')
  other,
}

extension MobileAccessoryTypeDisplay on MobileAccessoryType {
  String get label => switch (this) {
        MobileAccessoryType.headphones => 'Headphones',
        MobileAccessoryType.earbuds => 'Earbuds',
        MobileAccessoryType.charger => 'Charger',
        MobileAccessoryType.cable => 'Cable',
        MobileAccessoryType.powerBank => 'Power bank',
        MobileAccessoryType.wirelessCharger => 'Wireless charger',
        MobileAccessoryType.carCharger => 'Car charger',
        MobileAccessoryType.carMount => 'Car mount',
        MobileAccessoryType.phoneCase => 'Phone case',
        MobileAccessoryType.screenProtector => 'Screen protector',
        MobileAccessoryType.selfieStick => 'Selfie stick',
        MobileAccessoryType.ringLight => 'Ring light',
        MobileAccessoryType.tripod => 'Tripod',
        MobileAccessoryType.popSocket => 'PopSocket',
        MobileAccessoryType.memoryCard => 'Memory card',
        MobileAccessoryType.otgAdapter => 'OTG adapter',
        MobileAccessoryType.bluetoothSpeaker => 'Bluetooth speaker',
        MobileAccessoryType.smartTag => 'Smart tag',
        MobileAccessoryType.stylus => 'Stylus',
        MobileAccessoryType.other => 'Other',
      };
}
