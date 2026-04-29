import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum DogAgeRange {
  @JsonValue('Puppy')
  puppy,
  @JsonValue('Adult')
  adult,
  @JsonValue('Mature')
  mature,
  @JsonValue('Senior')
  senior,
}
