import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum ExperienceLevel {
  @JsonValue('OneToTwoYears')
  oneToTwoYears,
  @JsonValue('TwoToFiveYears')
  twoToFiveYears,
  @JsonValue('FiveToTenYears')
  fiveToTenYears,
  @JsonValue('TenPlusYears')
  tenPlusYears,
  @JsonValue('NoExperienceRequired')
  noExperienceRequired,
}
