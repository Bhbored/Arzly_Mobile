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

extension PhoneConditionDisplay on PhoneCondition {
  String get label => switch (this) {
        PhoneCondition.new_ => 'New',
        PhoneCondition.refurbished => 'Refurbished',
        PhoneCondition.used => 'Used',
      };
}
