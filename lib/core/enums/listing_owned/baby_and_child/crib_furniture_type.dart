import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum CribFurnitureType {
  @JsonValue('Beddings')
  beddings,
  @JsonValue('Beds')
  beds,
  @JsonValue('Closets')
  closets,
  @JsonValue('Decoration')
  decoration,
  @JsonValue('Mattresses')
  mattresses,
  @JsonValue('OtherFurniture')
  otherFurniture,
}
