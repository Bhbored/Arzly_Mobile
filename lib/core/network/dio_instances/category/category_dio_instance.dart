import 'package:arzly/core/network/client/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'category_dio_instance.g.dart';

@Riverpod(keepAlive: true)
DioClient categoryClient(Ref ref) {
  final client = ref.watch(baseClientProvider('category'));
  return client;
}
