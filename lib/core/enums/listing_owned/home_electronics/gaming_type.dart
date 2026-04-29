import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum GamingType {
  @JsonValue('Console')
  console,
  @JsonValue('Accessories')
  accessories,
}
