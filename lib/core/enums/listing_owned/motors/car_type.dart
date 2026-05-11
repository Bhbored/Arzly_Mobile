import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum CarType {
  @JsonValue('Convertible')
  convertible,
  @JsonValue('Estate')
  estate,
  @JsonValue('Hatchback')
  hatchback,
  @JsonValue('MPV')
  mpv,
  @JsonValue('Pickup')
  pickup,
  @JsonValue('Sedan')
  sedan,
  @JsonValue('SmallCityCar')
  smallCityCar,
  @JsonValue('SportsCoupe')
  sportsCoupe,
  @JsonValue('SUV')
  suv,
  @JsonValue('VanBus')
  vanBus,
  @JsonValue('ClassicCar')
  classicCar,
  @JsonValue('Other')
  other,
}

extension CarTypeDisplay on CarType {
  String get label => switch (this) {
    CarType.convertible => 'Convertible',
    CarType.estate => 'Estate',
    CarType.hatchback => 'Hatchback',
    CarType.mpv => 'MPV',
    CarType.suv => 'SUV',
    CarType.vanBus => 'Van / Bus',
    CarType.classicCar => 'Classic Car',
    CarType.pickup => 'Pickup',
    CarType.sedan => 'Sedan',
    CarType.smallCityCar => 'Small City Car',
    CarType.sportsCoupe => 'Sports / Coupe',
    CarType.other => 'Other',
  };
  static List<String> get labels => CarType.values.map((e) => e.label).toList();
}
