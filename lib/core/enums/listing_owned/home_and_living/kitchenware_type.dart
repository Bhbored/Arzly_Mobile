import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum KitchenwareType {
  @JsonValue('CookingTools')
  cookingTools,
  @JsonValue('Cutlery')
  cutlery,
  @JsonValue('FullKitchen')
  fullKitchen,
  @JsonValue('MugsAndCups')
  mugsAndCups,
  @JsonValue('Plates')
  plates,
  @JsonValue('Others')
  others,
}
