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
