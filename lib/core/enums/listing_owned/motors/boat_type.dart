import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum BoatType {
  @JsonValue('JetSki')
  jetSki,
  @JsonValue('Motorboat')
  motorboat,
  @JsonValue('Sailboat')
  sailboat,
  @JsonValue('Other')
  other,
}

extension BoatTypeDisplay on BoatType {
  String get label => switch (this) {
        BoatType.jetSki => 'Jet ski',
        BoatType.motorboat => 'Motorboat',
        BoatType.sailboat => 'Sailboat',
        BoatType.other => 'Other',
      };
}
