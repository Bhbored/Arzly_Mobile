import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum MembershipType {
  @JsonValue('Postpaid')
  postpaid,
  @JsonValue('Prepaid')
  prepaid,
}
