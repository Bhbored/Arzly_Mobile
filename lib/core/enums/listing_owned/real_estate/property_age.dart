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

extension PropertyAgeDisplay on PropertyAge {
  String get label => switch (this) {
        PropertyAge.oneToFiveYears => '1 YEAR – 5 YEARS',
        PropertyAge.fiveToTenYears => '5 YEARS – 10 YEARS',
        PropertyAge.tenPlusYears => '10+ YEARS',
      };
}
