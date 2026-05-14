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

extension WatchBrandDisplay on WatchBrand {
  String get label => switch (this) {
        WatchBrand.apple => 'Apple',
        WatchBrand.samsung => 'Samsung',
        WatchBrand.huawei => 'Huawei',
        WatchBrand.xiaomi => 'Xiaomi',
        WatchBrand.garmin => 'Garmin',
        WatchBrand.fitbit => 'Fitbit',
        WatchBrand.amazfit => 'Amazfit',
        WatchBrand.fossil => 'Fossil',
        WatchBrand.suunto => 'Suunto',
        WatchBrand.polar => 'Polar',
        WatchBrand.ticWatch => 'TicWatch',
        WatchBrand.other => 'Other',
      };
}
