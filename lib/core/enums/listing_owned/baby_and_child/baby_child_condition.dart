import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum BabyChildCondition {
  @JsonValue('New')
  new_,
  @JsonValue('Used')
  used,
}
