import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum PropertyCondition {
  @JsonValue('ReadyToMoveIn')
  readyToMoveIn,
  @JsonValue('UnderConstruction')
  underConstruction,
}
