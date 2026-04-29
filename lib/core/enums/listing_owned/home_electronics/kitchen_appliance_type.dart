import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum KitchenApplianceType {
  @JsonValue('Refrigerator')
  refrigerator,
  @JsonValue('Freezer')
  freezer,
  @JsonValue('Oven')
  oven,
  @JsonValue('Cooktop')
  cooktop,
  @JsonValue('Microwave')
  microwave,
  @JsonValue('Dishwasher')
  dishwasher,
  @JsonValue('Blender')
  blender,
  @JsonValue('Mixer')
  mixer,
  @JsonValue('Toaster')
  toaster,
  @JsonValue('CoffeeMaker')
  coffeeMaker,
  @JsonValue('Kettle')
  kettle,
  @JsonValue('AirFryer')
  airFryer,
  @JsonValue('FoodProcessor')
  foodProcessor,
  @JsonValue('Juicer')
  juicer,
  @JsonValue('Other')
  other,
}
