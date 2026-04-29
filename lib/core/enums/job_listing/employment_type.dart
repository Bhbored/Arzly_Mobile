import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum EmploymentType {
  @JsonValue('FullTime')
  fullTime,
  @JsonValue('PartTime')
  partTime,
  @JsonValue('Contract')
  contract,
  @JsonValue('Freelance')
  freelance,
  @JsonValue('Internship')
  internship,
  @JsonValue('Temporary')
  temporary,
  @JsonValue('Volunteer')
  volunteer,
  @JsonValue('ShiftBased')
  shiftBased,
  @JsonValue('Commission')
  commission,
}
