import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum WatchStorage {
  @JsonValue('GB8')
  gb8,
  @JsonValue('GB16')
  gb16,
  @JsonValue('GB32')
  gb32,
  @JsonValue('Other')
  other,
}

extension WatchStorageDisplay on WatchStorage {
  String get label => switch (this) {
        WatchStorage.gb8 => '8 GB',
        WatchStorage.gb16 => '16 GB',
        WatchStorage.gb32 => '32 GB',
        WatchStorage.other => 'Other',
      };
}
