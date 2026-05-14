import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum RoomFeature {
  @JsonValue('AirConditioning')
  airConditioning,
  @JsonValue('Balcony')
  balcony,
  @JsonValue('BathroomAttached')
  bathroomAttached,
  @JsonValue('Furnished')
  furnished,
  @JsonValue('KitchenAccess')
  kitchenAccess,
  @JsonValue('Parking')
  parking,
  @JsonValue('WiFi')
  wiFi,
  @JsonValue('BillsIncluded')
  billsIncluded,
}

extension RoomFeatureDisplay on RoomFeature {
  String get label => switch (this) {
        RoomFeature.airConditioning => 'Air conditioning',
        RoomFeature.balcony => 'Balcony',
        RoomFeature.bathroomAttached => 'Bathroom attached',
        RoomFeature.furnished => 'Furnished',
        RoomFeature.kitchenAccess => 'Kitchen access',
        RoomFeature.parking => 'Parking',
        RoomFeature.wiFi => 'WiFi',
        RoomFeature.billsIncluded => 'Bills included',
      };
}
