import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum KidGender {
  @JsonValue('Boy')
  boy,
  @JsonValue('Girl')
  girl,
}
