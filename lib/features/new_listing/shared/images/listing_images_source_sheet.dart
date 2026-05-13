import 'package:arzly/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

enum ListingImageSource { camera, gallery }

Future<ListingImageSource?> showListingImagesSourceSheet(
  BuildContext context,
) {
  final scheme = Theme.of(context).colorScheme;

  return showModalBottomSheet<ListingImageSource>(
    context: context,
    showDragHandle: true,
    backgroundColor: scheme.surface,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(context.borderRadiusLarge),
      ),
    ),
    builder: (context) {
      return SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            context.paddingMedium,
            0,
            context.paddingMedium,
            context.spaceMedium,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add photos',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: context.spaceSmall),
              ListTile(
                leading: Icon(Icons.photo_camera_rounded, color: scheme.primary),
                title: const Text('Camera'),
                onTap: () =>
                    Navigator.of(context).pop(ListingImageSource.camera),
              ),
              ListTile(
                leading: Icon(
                  Icons.photo_library_rounded,
                  color: scheme.primary,
                ),
                title: const Text('Gallery'),
                onTap: () =>
                    Navigator.of(context).pop(ListingImageSource.gallery),
              ),
            ],
          ),
        ),
      );
    },
  );
}
