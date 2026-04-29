import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum LandType {
  @JsonValue('Agricultural')
  agricultural,
  @JsonValue('Industrial')
  industrial,
  @JsonValue('Residential')
  residential,
  @JsonValue('Other')
  other,
}
