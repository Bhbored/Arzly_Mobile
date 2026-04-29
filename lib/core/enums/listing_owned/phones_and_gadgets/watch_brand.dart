import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum WatchBrand {
  @JsonValue('Apple')
  apple,
  @JsonValue('Samsung')
  samsung,
  @JsonValue('Huawei')
  huawei,
  @JsonValue('Xiaomi')
  xiaomi,
  @JsonValue('Garmin')
  garmin,
  @JsonValue('Fitbit')
  fitbit,
  @JsonValue('Amazfit')
  amazfit,
  @JsonValue('Fossil')
  fossil,
  @JsonValue('Suunto')
  suunto,
  @JsonValue('Polar')
  polar,
  @JsonValue('TicWatch')
  ticWatch,
  @JsonValue('Other')
  other,
}
