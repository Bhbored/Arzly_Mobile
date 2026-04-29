import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum WinterSportType {
  @JsonValue('Skiing')
  skiing,
  @JsonValue('Snowboarding')
  snowboarding,
  @JsonValue('Other')
  other,
}
