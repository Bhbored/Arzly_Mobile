import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum SportsCondition {
  @JsonValue('New')
  new_,
  @JsonValue('Used')
  used,
}
