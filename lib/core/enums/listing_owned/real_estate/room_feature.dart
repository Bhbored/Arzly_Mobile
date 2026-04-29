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
