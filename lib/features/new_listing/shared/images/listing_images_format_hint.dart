import 'package:arzly/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class ListingImagesFormatHint extends StatelessWidget {
  const ListingImagesFormatHint({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: context.spaceSmall),
      child: Text(
        'Each image should stay under 5 MB. '
        'You can upload common photo formats such as JPEG, PNG, or WebP.',
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
          color: Theme.of(context).colorScheme.onSurfaceVariant,
          height: 1.35,
        ),
      ),
    );
  }
}
