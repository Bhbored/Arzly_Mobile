import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum HomeDecorType {
  @JsonValue('Carpets')
  carpets,
  @JsonValue('DoorsAndWindows')
  doorsAndWindows,
  @JsonValue('LightingTools')
  lightingTools,
  @JsonValue('Mirrors')
  mirrors,
  @JsonValue('Paintings')
  paintings,
  @JsonValue('Curtains')
  curtains,
  @JsonValue('Others')
  others,
}
