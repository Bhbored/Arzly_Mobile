import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum BirdAgeGroup {
  @JsonValue('Juvenile')
  juvenile,
  @JsonValue('Subadult')
  subadult,
  @JsonValue('Adult')
  adult,
  @JsonValue('Senior')
  senior,
  @JsonValue('Other')
  other,
}
