import 'package:arzly/data/providers/temp_images_holder/temp_images_holder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

bool readTempListingHasAtLeastOnePhoto(WidgetRef ref) {
  return ref.read(tempImagesHolderProvider).when(
        data: (s) => s.hasImages,
        loading: () => false,
        error: (_, _) => false,
      );
}

bool watchTempListingHasAtLeastOnePhoto(WidgetRef ref) {
  return ref.watch(tempImagesHolderProvider).when(
        data: (s) => s.hasImages,
        loading: () => false,
        error: (_, _) => false,
      );
}
