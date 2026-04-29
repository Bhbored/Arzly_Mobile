import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum ListingStatus {
  @JsonValue('Pending')
  pending,
  @JsonValue('Active')
  active,
  @JsonValue('Sold')
  sold,
  @JsonValue('Expired')
  expired,
  @JsonValue('Rejected')
  rejected,
  @JsonValue('Deleted')
  deleted,
}
