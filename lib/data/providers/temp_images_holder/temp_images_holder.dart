import 'dart:async';
import 'dart:io';

import 'package:arzly/core/network/other_clients/image_upload_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'temp_images_holder.g.dart';

Duration? noTempImagesHolderRetry(int _, Object _) => null;

class TempImagesState {
  const TempImagesState({this.images = const [], this.primaryIndex = 0});

  final List<File> images;
  final int primaryIndex;

  bool get hasImages => images.isNotEmpty;

  File? get primaryImage {
    if (images.isEmpty) {
      return null;
    }
    final index = primaryIndex.clamp(0, images.length - 1);
    return images[index];
  }

  TempImagesState copyWith({List<File>? images, int? primaryIndex}) {
    return TempImagesState(
      images: images ?? this.images,
      primaryIndex: primaryIndex ?? this.primaryIndex,
    );
  }
}

class UploadedListingImages {
  const UploadedListingImages({
    required this.primaryImageUrl,
    required this.imagesUrl,
  });

  final String? primaryImageUrl;
  final List<String> imagesUrl;
}

@Riverpod(retry: noTempImagesHolderRetry, keepAlive: true)
class TempImagesHolder extends _$TempImagesHolder {
  @override
  FutureOr<TempImagesState> build() async => _load();

  Future<TempImagesState> _load() async => const TempImagesState();

  TempImagesState get _current =>
      state.whenOrNull(data: (data) => data) ?? const TempImagesState();

  void _setCurrent(TempImagesState value) {
    state = AsyncValue.data(value);
  }

  Future<void> refresh() async {
    if (ref.mounted) {
      state = const AsyncValue.loading();
      state = await AsyncValue.guard(_load);
    }
  }

  void setImages(List<File> images, {int primaryIndex = 0}) {
    if (images.isEmpty) {
      _setCurrent(const TempImagesState());
      return;
    }

    _setCurrent(
      TempImagesState(
        images: List<File>.unmodifiable(images),
        primaryIndex: primaryIndex.clamp(0, images.length - 1),
      ),
    );
  }

  void addImages(List<File> images) {
    if (images.isEmpty) {
      return;
    }

    final current = _current;
    _setCurrent(
      current.copyWith(images: [...current.images, ...images]),
    );
  }

  void setPrimaryIndex(int index) {
    final current = _current;
    if (index < 0 || index >= current.images.length) {
      return;
    }

    _setCurrent(current.copyWith(primaryIndex: index));
  }

  void removeImageAt(int index) {
    final current = _current;
    if (index < 0 || index >= current.images.length) {
      return;
    }

    final nextImages = [...current.images]..removeAt(index);
    if (nextImages.isEmpty) {
      _setCurrent(const TempImagesState());
      return;
    }

    var nextPrimaryIndex = current.primaryIndex;
    if (index < current.primaryIndex) {
      nextPrimaryIndex -= 1;
    } else if (index == current.primaryIndex) {
      nextPrimaryIndex = 0;
    }

    _setCurrent(
      TempImagesState(
        images: List<File>.unmodifiable(nextImages),
        primaryIndex: nextPrimaryIndex.clamp(0, nextImages.length - 1),
      ),
    );
  }

  Future<void> clear() async {
    if (ref.mounted) {
      _setCurrent(const TempImagesState());
    }
  }

  Future<UploadedListingImages> upload() async {
    final uploader = ref.read(imageUploadHelperProvider);
    final current = _current;
    final images = current.images;
    if (images.isEmpty) {
      return const UploadedListingImages(
        primaryImageUrl: null,
        imagesUrl: <String>[],
      );
    }

    if (images.length == 1) {
      final primaryImageUrl = await uploader.uploadImage(images.first);
      return UploadedListingImages(
        primaryImageUrl: primaryImageUrl,
        imagesUrl: const <String>[],
      );
    }

    final uploadedUrls = await uploader.uploadImages(images);
    if (uploadedUrls.isEmpty) {
      return const UploadedListingImages(
        primaryImageUrl: null,
        imagesUrl: <String>[],
      );
    }

    final primaryIndex = current.primaryIndex.clamp(0, uploadedUrls.length - 1);
    final primaryImageUrl = uploadedUrls[primaryIndex];
    final imagesUrl = <String>[
      for (var index = 0; index < uploadedUrls.length; index++)
        if (index != primaryIndex) uploadedUrls[index],
    ];

    return UploadedListingImages(
      primaryImageUrl: primaryImageUrl,
      imagesUrl: imagesUrl,
    );
  }
}
