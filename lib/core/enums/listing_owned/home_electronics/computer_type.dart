import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum ComputerType {
  @JsonValue('Laptop')
  laptop,
  @JsonValue('Tablet')
  tablet,
  @JsonValue('Computer')
  computer,
}
