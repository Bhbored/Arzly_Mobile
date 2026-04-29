import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum PersonalServiceType {
  @JsonValue('Tutoring')
  tutoring,
  @JsonValue('PersonalTraining')
  personalTraining,
  @JsonValue('BeautyServices')
  beautyServices,
  @JsonValue('Massage')
  massage,
  @JsonValue('Photography')
  photography,
  @JsonValue('Videography')
  videography,
  @JsonValue('Catering')
  catering,
  @JsonValue('Baking')
  baking,
  @JsonValue('Tailoring')
  tailoring,
  @JsonValue('Other')
  other,
}
