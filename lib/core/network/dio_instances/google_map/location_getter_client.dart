import 'package:arzly/core/network/client/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'location_getter_client.g.dart';

@Riverpod(keepAlive: true)
DioClient locationGetterClient(Ref ref) {
  final client = ref.watch(baseClientProvider('location'));
  return client;
}
