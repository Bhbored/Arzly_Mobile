import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum WaterSportType {
  @JsonValue('Sailing')
  sailing,
  @JsonValue('SnorkellingAndDiving')
  snorkellingAndDiving,
  @JsonValue('SurfBoarding')
  surfBoarding,
  @JsonValue('Other')
  other,
}
