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

extension ContactMethodDisplay on ContactMethod {
  String get label => switch (this) {
    ContactMethod.phoneNumber => 'Phone',
    ContactMethod.inAppChat => 'In-app chat',
    ContactMethod.both => 'Both',
  };
}
