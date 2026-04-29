import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum BedroomType {
  @JsonValue('BeddingSets')
  beddingSets,
  @JsonValue('Beds')
  beds,
  @JsonValue('Closets')
  closets,
  @JsonValue('FullBedrooms')
  fullBedrooms,
  @JsonValue('Mattresses')
  mattresses,
  @JsonValue('Nightstands')
  nightstands,
  @JsonValue('Pillows')
  pillows,
  @JsonValue('Others')
  others,
}
