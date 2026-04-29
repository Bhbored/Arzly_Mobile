import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum PetServiceType {
  @JsonValue('Grooming')
  grooming,
  @JsonValue('Boarding')
  boarding,
  @JsonValue('Walking')
  walking,
  @JsonValue('Training')
  training,
  @JsonValue('Veterinary')
  veterinary,
  @JsonValue('PetSitting')
  petSitting,
  @JsonValue('Other')
  other,
}
