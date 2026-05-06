// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_executor.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(executor)
final executorProvider = ExecutorFamily._();

final class ExecutorProvider
    extends $FunctionalProvider<ApiExecutor, ApiExecutor, ApiExecutor>
    with $Provider<ApiExecutor> {
  ExecutorProvider._({
    required ExecutorFamily super.from,
    required Dio super.argument,
  }) : super(
         retry: null,
         name: r'executorProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$executorHash();

  @override
  String toString() {
    return r'executorProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<ApiExecutor> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ApiExecutor create(Ref ref) {
    final argument = this.argument as Dio;
    return executor(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ApiExecutor value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ApiExecutor>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ExecutorProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$executorHash() => r'a12f3d678792658a2277385deb09e347e3747f15';

final class ExecutorFamily extends $Family
    with $FunctionalFamilyOverride<ApiExecutor, Dio> {
  ExecutorFamily._()
    : super(
        retry: null,
        name: r'executorProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  ExecutorProvider call(Dio instance) =>
      ExecutorProvider._(argument: instance, from: this);

  @override
  String toString() => r'executorProvider';
}
