import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum HobbiesCondition {
  @JsonValue('New')
  new_,
  @JsonValue('Used')
  used,
}
