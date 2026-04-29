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
