import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum OtherServiceType {
  @JsonValue('PetSitting')
  petSitting,
  @JsonValue('BabySitting')
  babySitting,
  @JsonValue('ElderlyCare')
  elderlyCare,
  @JsonValue('Other')
  other,
}
