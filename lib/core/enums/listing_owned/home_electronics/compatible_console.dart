import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum CompatibleConsole {
  @JsonValue('PC')
  pC,
  @JsonValue('PlayStation')
  playStation,
  @JsonValue('Xbox')
  xbox,
  @JsonValue('Nintendo')
  nintendo,
  @JsonValue('Other')
  other,
}
