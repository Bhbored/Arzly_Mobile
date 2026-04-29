import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum EducationLevel {
  @JsonValue('NoEducationRequired')
  noEducationRequired,
  @JsonValue('HighSchool')
  highSchool,
  @JsonValue('Diploma')
  diploma,
  @JsonValue('Bachelors')
  bachelors,
  @JsonValue('Masters')
  masters,
  @JsonValue('Doctorate')
  doctorate,
  @JsonValue('VocationalTraining')
  vocationalTraining,
  @JsonValue('ProfessionalCertification')
  professionalCertification,
}
