import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum MotorcycleCC {
  @JsonValue('CC_1_150')
  cc1_150,
  @JsonValue('CC_151_300')
  cc151_300,
  @JsonValue('CC_301_500')
  cc301_500,
  @JsonValue('CC_501_750')
  cc501_750,
  @JsonValue('CC_751_1000')
  cc751_1000,
  @JsonValue('CC_1000Plus')
  cc1000Plus,
}

extension MotorcycleCCDisplay on MotorcycleCC {
  String get label => switch (this) {
    MotorcycleCC.cc1_150 => '1-150cc',
    MotorcycleCC.cc151_300 => '151-300cc',
    MotorcycleCC.cc301_500 => '301-500cc',
    MotorcycleCC.cc501_750 => '501-750cc',
    MotorcycleCC.cc751_1000 => '751-1000cc',
    MotorcycleCC.cc1000Plus => '1000cc+',
  };

  static List<String> get labels =>
      MotorcycleCC.values.map((e) => e.label).toList();
}
