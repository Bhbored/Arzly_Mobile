import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum KidsAgeRange {
  @JsonValue('LessThan2Years')
  lessThan2Years,
  @JsonValue('TwoTo5Years')
  twoTo5Years,
  @JsonValue('FiveTo12Years')
  fiveTo12Years,
}
