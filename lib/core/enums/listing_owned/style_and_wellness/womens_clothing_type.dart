import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum WomensClothingType {
  @JsonValue('Dresses')
  dresses,
  @JsonValue('Tops')
  tops,
  @JsonValue('Blouses')
  blouses,
  @JsonValue('TShirts')
  tShirts,
  @JsonValue('Skirts')
  skirts,
  @JsonValue('Jeans')
  jeans,
  @JsonValue('Trousers')
  trousers,
  @JsonValue('Shorts')
  shorts,
  @JsonValue('Jackets')
  jackets,
  @JsonValue('Coats')
  coats,
  @JsonValue('Hoodies')
  hoodies,
  @JsonValue('Sweaters')
  sweaters,
  @JsonValue('Cardigans')
  cardigans,
  @JsonValue('Jumpsuits')
  jumpsuits,
  @JsonValue('Lingerie')
  lingerie,
  @JsonValue('Swimwear')
  swimwear,
  @JsonValue('Sportswear')
  sportswear,
  @JsonValue('TraditionalWear')
  traditionalWear,
  @JsonValue('Sleepwear')
  sleepwear,
  @JsonValue('MaternityWear')
  maternityWear,
  @JsonValue('Other')
  other,
}
