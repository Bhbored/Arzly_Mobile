import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum HomeServiceType {
  @JsonValue('Cleaning')
  cleaning,
  @JsonValue('Moving')
  moving,
  @JsonValue('Plumbing')
  plumbing,
  @JsonValue('Electrical')
  electrical,
  @JsonValue('Painting')
  painting,
  @JsonValue('Carpentry')
  carpentry,
  @JsonValue('Gardening')
  gardening,
  @JsonValue('PestControl')
  pestControl,
  @JsonValue('ACRepair')
  acRepair,
  @JsonValue('Other')
  other,
}
