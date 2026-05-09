import 'package:arzly/core/network/client/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'subcategory_dio_instance.g.dart';

@Riverpod(keepAlive: true)
DioClient subcategoryClient(Ref ref) {
  final client = ref.watch(baseClientProvider('SubCategory'));
  return client;
}
