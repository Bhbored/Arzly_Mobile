import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum StrollerSeatType {
  @JsonValue('CarSeats')
  carSeats,
  @JsonValue('HighChairs')
  highChairs,
  @JsonValue('Strollers')
  strollers,
  @JsonValue('Others')
  others,
}
