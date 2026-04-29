import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum BallSportType {
  @JsonValue('Football')
  football,
  @JsonValue('Basketball')
  basketball,
  @JsonValue('Volleyball')
  volleyball,
  @JsonValue('Handball')
  handball,
  @JsonValue('Rugby')
  rugby,
  @JsonValue('Baseball')
  baseball,
  @JsonValue('Cricket')
  cricket,
  @JsonValue('Golf')
  golf,
  @JsonValue('Other')
  other,
}
