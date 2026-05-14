import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum MembershipType {
  @JsonValue('Postpaid')
  postpaid,
  @JsonValue('Prepaid')
  prepaid,
}

extension MembershipTypeDisplay on MembershipType {
  String get label => switch (this) {
        MembershipType.postpaid => 'Postpaid',
        MembershipType.prepaid => 'Prepaid',
      };
}
