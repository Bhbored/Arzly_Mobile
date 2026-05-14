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

extension OwnershipTypeDisplay on OwnershipType {
  String get label => switch (this) {
        OwnershipType.byOwner => 'By owner',
        OwnershipType.byCompany => 'By company',
        OwnershipType.other => 'Other',
      };
}
