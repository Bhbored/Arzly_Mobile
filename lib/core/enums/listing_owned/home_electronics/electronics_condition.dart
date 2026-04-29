import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum ElectronicsCondition {
  @JsonValue('New')
  new_,
  @JsonValue('Refurbished')
  refurbished,
  @JsonValue('Used')
  used,
}
