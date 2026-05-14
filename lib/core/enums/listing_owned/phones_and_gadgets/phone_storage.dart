import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum PhoneStorage {
  @JsonValue('GB32')
  gb32,
  @JsonValue('GB64')
  gb64,
  @JsonValue('GB128')
  gb128,
  @JsonValue('GB256')
  gb256,
  @JsonValue('GB512')
  gb512,
  @JsonValue('TB1')
  tb1,
  @JsonValue('TB2')
  tb2,
}

extension PhoneStorageDisplay on PhoneStorage {
  String get label => switch (this) {
        PhoneStorage.gb32 => '32 GB',
        PhoneStorage.gb64 => '64 GB',
        PhoneStorage.gb128 => '128 GB',
        PhoneStorage.gb256 => '256 GB',
        PhoneStorage.gb512 => '512 GB',
        PhoneStorage.tb1 => '1 TB',
        PhoneStorage.tb2 => '2 TB',
      };
}
