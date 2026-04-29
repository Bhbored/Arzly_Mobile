import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum FurnishedStatus {
  @JsonValue('AppliancesOnly')
  appliancesOnly,
  @JsonValue('FullyFurnished')
  fullyFurnished,
  @JsonValue('SemiFurnished')
  semiFurnished,
  @JsonValue('Unfurnished')
  unfurnished,
}
