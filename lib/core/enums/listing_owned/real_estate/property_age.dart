import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum PropertyAge {
  @JsonValue('OneToFiveYears')
  oneToFiveYears,
  @JsonValue('FiveToTenYears')
  fiveToTenYears,
  @JsonValue('TenPlusYears')
  tenPlusYears,
}
