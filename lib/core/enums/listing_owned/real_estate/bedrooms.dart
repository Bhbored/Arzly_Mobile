import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum Bedrooms {
  @JsonValue('Studio')
  studio,
  @JsonValue('One')
  one,
  @JsonValue('Two')
  two,
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
  @JsonValue('Eight')
  eight,
  @JsonValue('Nine')
  nine,
  @JsonValue('Ten')
  ten,
  @JsonValue('Eleven')
  eleven,
  @JsonValue('Twelve')
  twelve,
  @JsonValue('Thirteen')
  thirteen,
  @JsonValue('Suggest')
  suggest,
}

extension BedroomsDisplay on Bedrooms {
  String get label => switch (this) {
        Bedrooms.studio => 'Studio',
        Bedrooms.one => '1',
        Bedrooms.two => '2',
        Bedrooms.three => '3',
        Bedrooms.four => '4',
        Bedrooms.five => '5',
        Bedrooms.six => '6',
        Bedrooms.seven => '7',
        Bedrooms.eight => '8',
        Bedrooms.nine => '9',
        Bedrooms.ten => '10',
        Bedrooms.eleven => '11',
        Bedrooms.twelve => '12',
        Bedrooms.thirteen => '13',
        Bedrooms.suggest => 'Suggest',
      };
}

const List<Bedrooms> kBedroomsWithoutSuggest = [
  Bedrooms.studio,
  Bedrooms.one,
  Bedrooms.two,
  Bedrooms.three,
  Bedrooms.four,
  Bedrooms.five,
  Bedrooms.six,
  Bedrooms.seven,
  Bedrooms.eight,
  Bedrooms.nine,
  Bedrooms.ten,
  Bedrooms.eleven,
  Bedrooms.twelve,
  Bedrooms.thirteen,
];
