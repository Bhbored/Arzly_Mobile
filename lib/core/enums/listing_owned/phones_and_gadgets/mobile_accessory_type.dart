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
