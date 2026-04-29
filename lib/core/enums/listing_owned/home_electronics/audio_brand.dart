import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum AudioBrand {
  @JsonValue('JBL')
  jBL,
  @JsonValue('Sony')
  sony,
  @JsonValue('Bose')
  bose,
  @JsonValue('Samsung')
  samsung,
  @JsonValue('LG')
  lG,
  @JsonValue('Yamaha')
  yamaha,
  @JsonValue('Pioneer')
  pioneer,
  @JsonValue('HarmanKardon')
  harmanKardon,
  @JsonValue('Marshall')
  marshall,
  @JsonValue('Beats')
  beats,
  @JsonValue('Sennheiser')
  sennheiser,
  @JsonValue('Other')
  other,
}
