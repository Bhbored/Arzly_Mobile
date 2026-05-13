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

extension PlateDigitsDisplay on PlateDigits {
  String get digitCountLabel => switch (this) {
    PlateDigits.three => '3',
    PlateDigits.four => '4',
    PlateDigits.five => '5',
    PlateDigits.six => '6',
    PlateDigits.seven => '7',
  };
}
