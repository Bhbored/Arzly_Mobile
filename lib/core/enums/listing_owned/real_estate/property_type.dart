import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum PropertyType {
  @JsonValue('Studio')
  studio,
  @JsonValue('Apartment')
  apartment,
  @JsonValue('Penthouse')
  penthouse,
  @JsonValue('Duplex')
  duplex,
  @JsonValue('Triplex')
  triplex,
  @JsonValue('Villa')
  villa,
  @JsonValue('Townhouse')
  townhouse,
  @JsonValue('Loft')
  loft,
  @JsonValue('Other')
  other,
}

extension PropertyTypeDisplay on PropertyType {
  String get label => switch (this) {
        PropertyType.studio => 'Studio',
        PropertyType.apartment => 'Apartment',
        PropertyType.penthouse => 'Penthouse',
        PropertyType.duplex => 'Duplex',
        PropertyType.triplex => 'Triplex',
        PropertyType.villa => 'Villa',
        PropertyType.townhouse => 'Townhouse',
        PropertyType.loft => 'Loft',
        PropertyType.other => 'Other',
      };
}
