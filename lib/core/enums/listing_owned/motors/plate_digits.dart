import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum PlateDigits {
  @JsonValue('Three')
  three,
  @JsonValue('Four')
  four,
  @JsonValue('Five')
  five,
  @JsonValue('Six')
  six,
  @JsonValue('Seven')
  seven,
}
