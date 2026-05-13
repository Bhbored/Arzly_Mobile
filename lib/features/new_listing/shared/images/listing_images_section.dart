import 'dart:io';

import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/data/providers/temp_images_holder/temp_images_holder.dart';
import 'package:arzly/features/new_listing/shared/images/listing_images_format_hint.dart';
import 'package:arzly/features/new_listing/shared/images/listing_images_gallery_page.dart';
import 'package:arzly/features/new_listing/shared/images/listing_images_preview.dart';
import 'package:arzly/features/new_listing/shared/images/listing_images_source_sheet.dart';
import 'package:arzly/features/shared/snack_bar/app_snack_bar.dart';
import 'package:arzly/features/shared/snack_bar/app_snack_bar_variant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class ListingImagesSection extends ConsumerWidget {
  const ListingImagesSection({
    super.key,
    this.showRequireAtLeastOnePhotoError = false,
  });

  final bool showRequireAtLeastOnePhotoError;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imagesAsync = ref.watch(tempImagesHolderProvider);
    final imagesNotifier = ref.read(tempImagesHolderProvider.notifier);

    return imagesAsync.when(
      loading: () => _buildContent(
        context,
        ref,
        imagesState: const TempImagesState(),
        imagesNotifier: imagesNotifier,
      ),
      error: (_, _) => _buildContent(
        context,
        ref,
        imagesState: const TempImagesState(),
        imagesNotifier: imagesNotifier,
      ),
      data: (imagesState) => _buildContent(
        context,
        ref,
        imagesState: imagesState,
        imagesNotifier: imagesNotifier,
      ),
    );
  }

  Widget _buildContent(
    BuildContext context,
    WidgetRef ref, {
    required TempImagesState imagesState,
    required TempImagesHolder imagesNotifier,
  }) {
    final scheme = Theme.of(context).colorScheme;

    return Padding(
      padding: EdgeInsets.fromLTRB(
        context.paddingMedium,
        0,
        context.paddingMedium,
        context.spaceSmall,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Photos',
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w700,
              color: scheme.onSurface,
            ),
          ),
          if (showRequireAtLeastOnePhotoError && !imagesState.hasImages) ...[
            SizedBox(height: context.spaceSmall * 0.75),
            Text(
              'Add at least one photo to continue.',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: scheme.error,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ],
          SizedBox(height: context.spaceSmall),
          DecoratedBox(
            decoration: BoxDecoration(
              color: scheme.surfaceContainerHigh,
              borderRadius: BorderRadius.circular(context.borderRadiusMedium),
              border: Border.all(
                color: scheme.outlineVariant.withValues(alpha: 0.65),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(context.paddingMedium),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.add_photo_alternate_outlined,
                        color: scheme.primary,
                        size: 22,
                      ),
                      SizedBox(width: context.paddingSmall),
                      Expanded(
                        child: Text(
                          imagesState.hasImages
                              ? '${imagesState.images.length} photo${imagesState.images.length == 1 ? '' : 's'} selected'
                              : 'Add listing photos',
                          style: Theme.of(context).textTheme.titleSmall
                              ?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: scheme.onSurface,
                              ),
                        ),
                      ),
                    ],
                  ),
                  if (imagesState.hasImages) ...[
                    SizedBox(height: context.spaceMedium),
                    if (imagesState.images.length == 1)
                      ListingImagesSinglePreview(
                        image: imagesState.images.first,
                        onOpenGallery: () => _openGallery(
                          context,
                          ref,
                          imagesState: imagesState,
                          initialIndex: 0,
                        ),
                        onRemove: () => imagesNotifier.removeImageAt(0),
                      )
                    else
                      ListingImagesMultiPreview(
                        images: imagesState.images,
                        primaryIndex: imagesState.primaryIndex,
                        onOpenGallery: (index) => _openGallery(
                          context,
                          ref,
                          imagesState: imagesState,
                          initialIndex: index,
                        ),
                        onRemove: imagesNotifier.removeImageAt,
                        onSetPrimary: imagesNotifier.setPrimaryIndex,
                      ),
                  ],
                  SizedBox(height: context.spaceMedium),
                  FilledButton.tonalIcon(
                    onPressed: () => _pickImages(context, ref),
                    icon: const Icon(Icons.add_rounded),
                    label: Text(
                      imagesState.hasImages ? 'Add more photos' : 'Add photos',
                    ),
                  ),
                  const ListingImagesFormatHint(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _pickImages(BuildContext context, WidgetRef ref) async {
    final source = await showListingImagesSourceSheet(context);
    if (source == null || !context.mounted) {
      return;
    }

    final picker = ImagePicker();
    try {
      final files = switch (source) {
        ListingImageSource.camera => await _pickFromCamera(picker),
        ListingImageSource.gallery => await _pickFromGallery(picker),
      };
      if (!context.mounted || files.isEmpty) {
        return;
      }

      ref.read(tempImagesHolderProvider.notifier).addImages(files);
    } catch (_) {
      if (!context.mounted) {
        return;
      }
      AppSnackBar.show(
        context,
        message: 'Could not load photos. Try again.',
        variant: AppSnackBarVariant.error,
      );
    }
  }

  Future<List<File>> _pickFromCamera(ImagePicker picker) async {
    final picked = await picker.pickImage(
      source: ImageSource.camera,
      imageQuality: 88,
    );
    if (picked == null) {
      return const [];
    }
    return [File(picked.path)];
  }

  Future<List<File>> _pickFromGallery(ImagePicker picker) async {
    final picked = await picker.pickMultiImage(imageQuality: 88);
    if (picked.isEmpty) {
      return const [];
    }
    return picked.map((file) => File(file.path)).toList();
  }

  Future<void> _openGallery(
    BuildContext context,
    WidgetRef ref, {
    required TempImagesState imagesState,
    required int initialIndex,
  }) async {
    final updatedPrimaryIndex = await Navigator.of(context).push<int>(
      MaterialPageRoute(
        builder: (context) => ListingImagesGalleryPage(
          images: imagesState.images,
          initialIndex: initialIndex,
          primaryIndex: imagesState.primaryIndex,
        ),
      ),
    );
    if (!context.mounted || updatedPrimaryIndex == null) {
      return;
    }

    ref
        .read(tempImagesHolderProvider.notifier)
        .setPrimaryIndex(updatedPrimaryIndex);
  }
}
