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

extension FurnishedStatusDisplay on FurnishedStatus {
  String get label => switch (this) {
        FurnishedStatus.appliancesOnly => 'Appliances only',
        FurnishedStatus.fullyFurnished => 'Fully furnished',
        FurnishedStatus.semiFurnished => 'Semi-furnished',
        FurnishedStatus.unfurnished => 'Unfurnished',
      };
}
