import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum NotificationSource {
  @JsonValue('System')
  system,
  @JsonValue('Listing')
  listing,
  @JsonValue('Chat')
  chat,
  @JsonValue('Ticket')
  ticket,
  @JsonValue('Promotion')
  promotion,
}
