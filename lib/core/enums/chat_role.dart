import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum ChatRole {
  @JsonValue('Buyer')
  buyer,
  @JsonValue('Seller')
  seller,
  @JsonValue('Neutral')
  neutral,
}
