import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum NotificationSource {
  @JsonValue('System')
  system,
  @JsonValue('Message')
  message,
  @JsonValue('Listing')
  listing,
  @JsonValue('Admin')
  admin,
}
