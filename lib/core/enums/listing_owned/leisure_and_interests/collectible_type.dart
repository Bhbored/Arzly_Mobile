import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum CollectibleType {
  @JsonValue('Currency')
  currency,
  @JsonValue('Figures')
  figures,
  @JsonValue('Gadgets')
  gadgets,
  @JsonValue('Pens')
  pens,
  @JsonValue('Stamps')
  stamps,
  @JsonValue('Other')
  other,
}
