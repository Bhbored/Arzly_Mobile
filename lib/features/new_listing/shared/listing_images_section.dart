import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/features/new_listing/shared/listing_images_action_tile.dart';
import 'package:arzly/features/new_listing/shared/listing_images_format_hint.dart';
import 'package:flutter/material.dart';

class ListingImagesSection extends StatelessWidget {
  const ListingImagesSection({super.key, this.imageUrls = const []});

  final List<String> imageUrls;

  @override
  Widget build(BuildContext context) {
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
                          'Add listing photos',
                          style: Theme.of(context).textTheme.titleSmall
                              ?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: scheme.onSurface,
                              ),
                        ),
                      ),
                    ],
                  ),
                  if (imageUrls.isNotEmpty) ...[
                    SizedBox(height: context.spaceSmall),
                    Text(
                      '${imageUrls.length} photo${imageUrls.length == 1 ? '' : 's'}',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                  SizedBox(height: context.spaceMedium),
                  Row(
                    children: [
                      ListingImagesActionTile(
                        icon: Icons.photo_camera_rounded,
                        label: 'Camera',
                        onTap: () {},
                      ),
                      SizedBox(width: context.paddingSmall),
                      ListingImagesActionTile(
                        icon: Icons.photo_library_rounded,
                        label: 'Gallery',
                        onTap: () {},
                      ),
                    ],
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
}
