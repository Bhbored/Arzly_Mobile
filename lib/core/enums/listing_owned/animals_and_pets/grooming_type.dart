import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum GroomingType {
  @JsonValue('NailCare')
  nailCare,
  @JsonValue('Shampoo')
  shampoo,
  @JsonValue('Brushes')
  brushes,
  @JsonValue('Clippers')
  clippers,
  @JsonValue('EarCare')
  earCare,
  @JsonValue('DentalCare')
  dentalCare,
  @JsonValue('Other')
  other,
}
