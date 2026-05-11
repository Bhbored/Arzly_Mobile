import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum AirConditioning {
  @JsonValue('None')
  none,
  @JsonValue('Manual')
  manual,
  @JsonValue('Automatic')
  automatic,
  @JsonValue('Automatic2Zones')
  automatic2Zones,
  @JsonValue('Automatic3Zones')
  automatic3Zones,
  @JsonValue('Automatic4Zones')
  automatic4Zones,
}

extension AirConditioningDisplay on AirConditioning {
  String get label => switch (this) {
    AirConditioning.none => 'No A/C',
    AirConditioning.manual => 'A/C Manual',
    AirConditioning.automatic => 'Automatic Air Conditioning',
    AirConditioning.automatic2Zones => 'Automatic Air Conditioning 2 Zones',
    AirConditioning.automatic3Zones => 'Automatic Air Conditioning 3 Zones',
    AirConditioning.automatic4Zones => 'Automatic Air Conditioning 4 Zones',
  };
  static List<String> get labels =>
      AirConditioning.values.map((e) => e.label).toList();
}
