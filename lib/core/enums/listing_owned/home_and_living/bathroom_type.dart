import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum BathroomType {
  @JsonValue('MirrorsAndShelves')
  mirrorsAndShelves,
  @JsonValue('ShowerRoomsAndTubs')
  showerRoomsAndTubs,
  @JsonValue('Sinks')
  sinks,
  @JsonValue('ToiletSeats')
  toiletSeats,
  @JsonValue('WaterMixerAndShowerHeads')
  waterMixerAndShowerHeads,
  @JsonValue('Others')
  others,
}
