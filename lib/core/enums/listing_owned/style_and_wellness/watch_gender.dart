import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum WatchGender {
  @JsonValue('Men')
  men,
  @JsonValue('Women')
  women,
  @JsonValue('Unisex')
  unisex,
  @JsonValue('Kids')
  kids,
}
