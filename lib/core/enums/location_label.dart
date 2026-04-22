import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum LocationLabel {
  @JsonValue('Home')
  home,
  @JsonValue('Work')
  work,
  @JsonValue('Other')
  other,
}
