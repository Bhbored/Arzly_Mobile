import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum ContactMethod {
  @JsonValue('PhoneNumber')
  phoneNumber,
  @JsonValue('InAppChat')
  inAppChat,
  @JsonValue('Both')
  both,
}
