import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum PhoneCondition {
  @JsonValue('New')
  new_,
  @JsonValue('Refurbished')
  refurbished,
  @JsonValue('Used')
  used,
}
