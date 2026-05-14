import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum CommercialType {
  @JsonValue('Garage')
  garage,
  @JsonValue('Office')
  office,
  @JsonValue('Shop')
  shop,
  @JsonValue('Warehouse')
  warehouse,
  @JsonValue('Workshop')
  workshop,
  @JsonValue('Showroom')
  showroom,
  @JsonValue('Other')
  other,
}

extension CommercialTypeDisplay on CommercialType {
  String get label => switch (this) {
    CommercialType.garage => 'Garage',
    CommercialType.office => 'Office',
    CommercialType.shop => 'Shop',
    CommercialType.warehouse => 'Warehouse',
    CommercialType.workshop => 'Workshop',
    CommercialType.showroom => 'Showroom',
    CommercialType.other => 'Other',
  };
}
