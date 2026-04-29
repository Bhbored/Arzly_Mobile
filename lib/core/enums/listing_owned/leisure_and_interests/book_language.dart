import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum BookLanguage {
  @JsonValue('Arabic')
  arabic,
  @JsonValue('French')
  french,
  @JsonValue('English')
  english,
  @JsonValue('Other')
  other,
}
