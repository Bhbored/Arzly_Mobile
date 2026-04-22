import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum AuthMethod {
  @JsonValue('Firebase')
  firebase,
  @JsonValue('Identity')
  identity,
}
