import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum TVType {
  @JsonValue('TVs')
  tVs,
  @JsonValue('TVReceiversAndSatellites')
  tvReceiversAndSatellites,
  @JsonValue('VideoPlayers')
  videoPlayers,
  @JsonValue('Other')
  other,
}
