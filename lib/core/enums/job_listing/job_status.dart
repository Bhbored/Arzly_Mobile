import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum JobStatus {
  @JsonValue('Pending')
  pending,
  @JsonValue('Active')
  active,
  @JsonValue('Filled')
  filled,
  @JsonValue('Rejected')
  rejected,
  @JsonValue('Expired')
  expired,
  @JsonValue('Deleted')
  deleted,
}
