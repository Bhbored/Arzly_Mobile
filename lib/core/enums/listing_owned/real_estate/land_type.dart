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

extension LandTypeDisplay on LandType {
  String get label => switch (this) {
    LandType.agricultural => 'Agricultural',
    LandType.industrial => 'Industrial',
    LandType.residential => 'Residential',
    LandType.other => 'Other',
  };
}
