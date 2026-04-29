import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum JobType {
  @JsonValue('Seeker')
  seeker,
  @JsonValue('Available')
  available,
}
