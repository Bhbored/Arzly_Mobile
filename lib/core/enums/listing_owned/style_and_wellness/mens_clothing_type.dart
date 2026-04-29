import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum MensClothingType {
  @JsonValue('TShirts')
  tShirts,
  @JsonValue('Shirts')
  shirts,
  @JsonValue('PoloShirts')
  poloShirts,
  @JsonValue('Jackets')
  jackets,
  @JsonValue('Coats')
  coats,
  @JsonValue('Hoodies')
  hoodies,
  @JsonValue('Sweaters')
  sweaters,
  @JsonValue('Jeans')
  jeans,
  @JsonValue('Trousers')
  trousers,
  @JsonValue('Shorts')
  shorts,
  @JsonValue('Suits')
  suits,
  @JsonValue('Blazers')
  blazers,
  @JsonValue('Underwear')
  underwear,
  @JsonValue('Socks')
  socks,
  @JsonValue('Swimwear')
  swimwear,
  @JsonValue('Sportswear')
  sportswear,
  @JsonValue('TraditionalWear')
  traditionalWear,
  @JsonValue('Sleepwear')
  sleepwear,
  @JsonValue('Other')
  other,
}
