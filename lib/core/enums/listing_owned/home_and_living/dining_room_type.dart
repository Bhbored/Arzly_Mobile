import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum DiningRoomType {
  @JsonValue('DiningTables')
  diningTables,
  @JsonValue('DiningChairs')
  diningChairs,
  @JsonValue('FullDiningRoom')
  fullDiningRoom,
  @JsonValue('Sideboards')
  sideboards,
  @JsonValue('Others')
  others,
}
