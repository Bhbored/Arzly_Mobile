import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum WorkplaceType {
  @JsonValue('OnSite')
  onSite,
  @JsonValue('Remote')
  remote,
  @JsonValue('Hybrid')
  hybrid,
}
