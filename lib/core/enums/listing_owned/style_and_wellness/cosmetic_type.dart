import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum CosmeticType {
  @JsonValue('HairCare')
  hairCare,
  @JsonValue('MakeUp')
  makeUp,
  @JsonValue('Perfume')
  perfume,
  @JsonValue('SkinCare')
  skinCare,
  @JsonValue('Other')
  other,
}
