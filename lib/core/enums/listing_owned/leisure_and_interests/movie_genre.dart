import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum MovieGenre {
  @JsonValue('Action')
  action,
  @JsonValue('Adventure')
  adventure,
  @JsonValue('Animation')
  animation,
  @JsonValue('Comedy')
  comedy,
  @JsonValue('Documentary')
  documentary,
  @JsonValue('Drama')
  drama,
  @JsonValue('Horror')
  horror,
  @JsonValue('Romance')
  romance,
  @JsonValue('ScienceFiction')
  scienceFiction,
  @JsonValue('Thriller')
  thriller,
  @JsonValue('Western')
  western,
  @JsonValue('Other')
  other,
}
