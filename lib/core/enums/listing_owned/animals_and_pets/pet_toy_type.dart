import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum PetToyType {
  @JsonValue('Balls')
  balls,
  @JsonValue('ChewToys')
  chewToys,
  @JsonValue('CatnipToys')
  catnipToys,
  @JsonValue('FeatherToys')
  featherToys,
  @JsonValue('LaserToys')
  laserToys,
  @JsonValue('PuzzleToys')
  puzzleToys,
  @JsonValue('PlushToys')
  plushToys,
  @JsonValue('RopeToys')
  ropeToys,
  @JsonValue('ScratchingPosts')
  scratchingPosts,
  @JsonValue('SqueakyToys')
  squeakyToys,
  @JsonValue('Tunnels')
  tunnels,
  @JsonValue('Other')
  other,
}
