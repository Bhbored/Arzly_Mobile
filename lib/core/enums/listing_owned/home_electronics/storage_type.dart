import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum StorageType {
  @JsonValue('HDD')
  hDD,
  @JsonValue('SSD')
  sSD,
  @JsonValue('SSHD')
  sSHD,
  @JsonValue('NVMe')
  nvMe,
  @JsonValue('Other')
  other,
}
