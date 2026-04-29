import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum PetGender {
  @JsonValue('Male')
  male,
  @JsonValue('Female')
  female,
}
