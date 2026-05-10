import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum VehicleCondition {
  @JsonValue('New')
  new_,
  @JsonValue('Used')
  used,
}

extension VehicleConditionUi on VehicleCondition {
  String get shortLabel => switch (this) {
        VehicleCondition.new_ => 'New',
        VehicleCondition.used => 'Used',
      };
}
