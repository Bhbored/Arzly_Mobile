import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum TicketStatus {
  @JsonValue('Open')
  open,
  @JsonValue('InProgress')
  inProgress,
  @JsonValue('Resolved')
  resolved,
  @JsonValue('Closed')
  closed,
}
