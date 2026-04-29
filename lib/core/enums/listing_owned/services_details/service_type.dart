import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum ServiceType {
  @JsonValue('Offering')
  offering,
  @JsonValue('Requesting')
  requesting,
}
