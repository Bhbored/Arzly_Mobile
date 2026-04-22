import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum ListingStatus {
  @JsonValue('Pending')
  pending,
  @JsonValue('Approved')
  approved,
  @JsonValue('Rejected')
  rejected,
  @JsonValue('Sold')
  sold,
  @JsonValue('Archived')
  archived,
}
