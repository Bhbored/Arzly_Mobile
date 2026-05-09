import 'package:arzly/core/network/client/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'listing_dio_instance.g.dart';

@Riverpod(keepAlive: true)
DioClient listingClient(Ref ref) {
  final client = ref.watch(baseClientProvider('listing'));
  return client;
}
