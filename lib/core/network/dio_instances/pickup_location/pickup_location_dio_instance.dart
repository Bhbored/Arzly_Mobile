import 'package:arzly/core/network/client/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pickup_location_dio_instance.g.dart';

@Riverpod(keepAlive: true)
DioClient pickupLocationClient(Ref ref) {
  final client = ref.watch(baseClientProvider('pickuplocation'));
  return client;
}
