import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum MotorcycleFuelType {
  @JsonValue('Electric')
  electric,
  @JsonValue('Benzine')
  benzine,
}

extension MotorcycleFuelTypeDisplay on MotorcycleFuelType {
  String get label => switch (this) {
    MotorcycleFuelType.electric => 'Electric',
    MotorcycleFuelType.benzine => 'Benzine',
  };

  static List<String> get labels =>
      MotorcycleFuelType.values.map((e) => e.label).toList();
}
