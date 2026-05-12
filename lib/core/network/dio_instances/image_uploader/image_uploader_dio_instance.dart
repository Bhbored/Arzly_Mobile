import 'package:arzly/core/network/client/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'image_uploader_dio_instance.g.dart';

@Riverpod(keepAlive: true)
DioClient imageUploaderClient(Ref ref) {
  final client = ref.watch(baseClientProvider('upload'));
  return client;
}
