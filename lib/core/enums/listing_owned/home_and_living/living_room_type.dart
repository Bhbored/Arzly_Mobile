import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum LivingRoomType {
  @JsonValue('BookshelvesAndTVCabinets')
  bookshelvesAndTVCabinets,
  @JsonValue('ChairsAndSofas')
  chairsAndSofas,
  @JsonValue('FullLivingRoom')
  fullLivingRoom,
  @JsonValue('Tables')
  tables,
  @JsonValue('Others')
  others,
}
