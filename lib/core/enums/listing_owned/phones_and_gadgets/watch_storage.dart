import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum WatchStorage {
  @JsonValue('GB8')
  gb8,
  @JsonValue('GB16')
  gb16,
  @JsonValue('GB32')
  gb32,
  @JsonValue('Other')
  other,
}
