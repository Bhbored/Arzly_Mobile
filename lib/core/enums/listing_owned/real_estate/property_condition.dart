import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum PropertyCondition {
  @JsonValue('ReadyToMoveIn')
  readyToMoveIn,
  @JsonValue('UnderConstruction')
  underConstruction,
}

extension PropertyConditionDisplay on PropertyCondition {
  String get label => switch (this) {
        PropertyCondition.readyToMoveIn => 'Ready to move in',
        PropertyCondition.underConstruction => 'Under construction',
      };
}
