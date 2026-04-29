import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum JobLanguage {
  @JsonValue('Arabic')
  arabic,
  @JsonValue('English')
  english,
  @JsonValue('French')
  french,
}
