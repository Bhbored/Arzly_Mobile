// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_listings_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UserListingsNotifier)
final userListingsProvider = UserListingsNotifierProvider._();

final class UserListingsNotifierProvider
    extends $AsyncNotifierProvider<UserListingsNotifier, List<Listing>> {
  UserListingsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: noUserListingsRetry,
        name: r'userListingsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userListingsNotifierHash();

  @$internal
  @override
  UserListingsNotifier create() => UserListingsNotifier();
}

String _$userListingsNotifierHash() =>
    r'16a413ef6c4cac1af71e11c004489c3cba8321e9';

abstract class _$UserListingsNotifier extends $AsyncNotifier<List<Listing>> {
  FutureOr<List<Listing>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Listing>>, List<Listing>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Listing>>, List<Listing>>,
              AsyncValue<List<Listing>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
