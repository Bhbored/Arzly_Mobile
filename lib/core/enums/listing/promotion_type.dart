import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum PromotionType {
  @JsonValue('Featured')
  featured,
  @JsonValue('Premium')
  premium,
  @JsonValue('Elite')
  elite,
}
