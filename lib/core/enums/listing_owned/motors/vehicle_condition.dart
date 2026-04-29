import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum VehicleCondition {
  @JsonValue('New')
  new_,
  @JsonValue('Used')
  used,
}
