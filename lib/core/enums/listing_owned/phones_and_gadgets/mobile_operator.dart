import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum MobileOperator {
  @JsonValue('Alfa')
  alfa,
  @JsonValue('Touch')
  touch,
  @JsonValue('Other')
  other,
}
