import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum LanguageCode {
  @JsonValue('En')
  en,
  @JsonValue('Ar')
  ar,
  @JsonValue('Fr')
  fr,
}
