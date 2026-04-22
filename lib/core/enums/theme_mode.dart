import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum ThemeMode {
  @JsonValue('System')
  system,
  @JsonValue('Light')
  light,
  @JsonValue('Dark')
  dark,
}
