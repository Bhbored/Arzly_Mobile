import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum TicketPriority {
  @JsonValue('Low')
  low,
  @JsonValue('Medium')
  medium,
  @JsonValue('High')
  high,
  @JsonValue('Urgent')
  urgent,
}
