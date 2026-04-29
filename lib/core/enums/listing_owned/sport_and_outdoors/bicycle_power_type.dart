import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum BicyclePowerType {
  @JsonValue('Manual')
  manual,
  @JsonValue('Electric')
  electric,
  @JsonValue('Hybrid')
  hybrid,
}
