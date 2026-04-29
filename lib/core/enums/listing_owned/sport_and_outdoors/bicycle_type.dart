import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum BicycleType {
  @JsonValue('BicycleAccessoriesAndParts')
  bicycleAccessoriesAndParts,
  @JsonValue('Bicycles')
  bicycles,
  @JsonValue('Other')
  other,
}
