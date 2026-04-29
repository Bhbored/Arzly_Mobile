import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum OwnershipType {
  @JsonValue('ByOwner')
  byOwner,
  @JsonValue('ByCompany')
  byCompany,
  @JsonValue('Other')
  other,
}
