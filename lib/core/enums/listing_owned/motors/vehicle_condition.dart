import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum VehicleCondition {
  @JsonValue('New')
  new_,
  @JsonValue('Used')
  used,
}

extension VehicleConditionDisplay on VehicleCondition {
  String get label => switch (this) {
        VehicleCondition.new_ => 'New',
        VehicleCondition.used => 'Used',
      };
}
