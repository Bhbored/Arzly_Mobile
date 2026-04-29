import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum ComputerAccessoryType {
  @JsonValue('ComputerAccessories')
  computerAccessories,
  @JsonValue('ComputerParts')
  computerParts,
  @JsonValue('ConnectivityAndWiring')
  connectivityAndWiring,
  @JsonValue('POSSystemsAndMachines')
  posSystemsAndMachines,
  @JsonValue('PrintersAndScanners')
  printersAndScanners,
  @JsonValue('Other')
  other,
}
