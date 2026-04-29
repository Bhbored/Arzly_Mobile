import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum FurnitureCondition {
  @JsonValue('New')
  new_,
  @JsonValue('Used')
  used,
}
