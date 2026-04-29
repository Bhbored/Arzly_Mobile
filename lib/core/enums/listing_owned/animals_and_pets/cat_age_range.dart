import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum CatAgeRange {
  @JsonValue('Kitten')
  kitten,
  @JsonValue('Adult')
  adult,
  @JsonValue('Mature')
  mature,
  @JsonValue('Senior')
  senior,
}
