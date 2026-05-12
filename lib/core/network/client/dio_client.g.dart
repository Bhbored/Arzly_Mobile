// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dio_client.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(baseClient)
final baseClientProvider = BaseClientFamily._();

final class BaseClientProvider
    extends $FunctionalProvider<DioClient, DioClient, DioClient>
    with $Provider<DioClient> {
  BaseClientProvider._({
    required BaseClientFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'baseClientProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$baseClientHash();

  @override
  String toString() {
    return r'baseClientProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<DioClient> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  DioClient create(Ref ref) {
    final argument = this.argument as String;
    return baseClient(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DioClient value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DioClient>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is BaseClientProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$baseClientHash() => r'eb51d11a34c17cc29a35abd3a878b753950cc20a';

final class BaseClientFamily extends $Family
    with $FunctionalFamilyOverride<DioClient, String> {
  BaseClientFamily._()
    : super(
        retry: null,
        name: r'baseClientProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  BaseClientProvider call(String path) =>
      BaseClientProvider._(argument: path, from: this);

  @override
  String toString() => r'baseClientProvider';
}
