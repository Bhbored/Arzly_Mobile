import 'dart:io';

import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/features/new_listing/shared/listing_images_primary_badge.dart';
import 'package:flutter/material.dart';

class ListingImagesSinglePreview extends StatelessWidget {
  const ListingImagesSinglePreview({
    super.key,
    required this.image,
    required this.onOpenGallery,
    required this.onRemove,
  });

  final File image;
  final VoidCallback onOpenGallery;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(context.borderRadiusMedium),
      child: AspectRatio(
        aspectRatio: 4 / 3,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Material(
              color: scheme.surfaceContainerLow,
              child: InkWell(
                onTap: onOpenGallery,
                child: Image.file(image, fit: BoxFit.cover),
              ),
            ),
            const Positioned(
              top: 10,
              left: 10,
              child: ListingImagesPrimaryBadge(),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: _ListingImageRemoveButton(onPressed: onRemove),
            ),
          ],
        ),
      ),
    );
  }
}

class ListingImagesMultiPreview extends StatelessWidget {
  const ListingImagesMultiPreview({
    super.key,
    required this.images,
    required this.primaryIndex,
    required this.onOpenGallery,
    required this.onRemove,
    required this.onSetPrimary,
  });

  final List<File> images;
  final int primaryIndex;
  final ValueChanged<int> onOpenGallery;
  final ValueChanged<int> onRemove;
  final ValueChanged<int> onSetPrimary;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final tileSize = context.screenWidth * 0.28;

    return SizedBox(
      height: tileSize,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        separatorBuilder: (_, _) => SizedBox(width: context.paddingSmall),
        itemBuilder: (context, index) {
          final isPrimary = index == primaryIndex;

          return SizedBox(
            width: tileSize,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(context.borderRadiusMedium),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Material(
                    color: scheme.surfaceContainerLow,
                    child: InkWell(
                      onTap: () => onOpenGallery(index),
                      child: Image.file(images[index], fit: BoxFit.cover),
                    ),
                  ),
                  if (isPrimary)
                    const Positioned(
                      top: 8,
                      left: 8,
                      child: ListingImagesPrimaryBadge(compact: true),
                    ),
                  Positioned(
                    top: 6,
                    right: 6,
                    child: _ListingImageRemoveButton(
                      onPressed: () => onRemove(index),
                    ),
                  ),
                  if (!isPrimary)
                    Positioned(
                      left: 8,
                      right: 8,
                      bottom: 8,
                      child: FilledButton.tonal(
                        onPressed: () => onSetPrimary(index),
                        style: FilledButton.styleFrom(
                          minimumSize: const Size(0, 30),
                          padding: EdgeInsets.symmetric(
                            horizontal: context.paddingSmall * 0.5,
                          ),
                          visualDensity: VisualDensity.compact,
                        ),
                        child: const Text('Cover'),
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _ListingImageRemoveButton extends StatelessWidget {
  const _ListingImageRemoveButton({required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Material(
      color: scheme.scrim.withValues(alpha: 0.45),
      shape: const CircleBorder(),
      clipBehavior: Clip.antiAlias,
      child: IconButton(
        onPressed: onPressed,
        visualDensity: VisualDensity.compact,
        iconSize: 18,
        color: scheme.onPrimary,
        icon: const Icon(Icons.close_rounded),
      ),
    );
  }
}
