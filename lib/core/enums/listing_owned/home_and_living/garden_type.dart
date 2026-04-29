import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum GardenType {
  @JsonValue('GardenDecoration')
  gardenDecoration,
  @JsonValue('GardenFurniture')
  gardenFurniture,
  @JsonValue('GardenGrill')
  gardenGrill,
  @JsonValue('GardenUmbrella')
  gardenUmbrella,
  @JsonValue('GardeningTools')
  gardeningTools,
  @JsonValue('PlantsAndFlowers')
  plantsAndFlowers,
  @JsonValue('Others')
  others,
}
