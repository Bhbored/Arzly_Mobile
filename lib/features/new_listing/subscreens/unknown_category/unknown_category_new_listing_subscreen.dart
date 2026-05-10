import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';
import 'package:flutter/material.dart';

class UnknownCategoryNewListingSubscreen extends StatelessWidget {
  const UnknownCategoryNewListingSubscreen({
    super.key,
    required this.category,
    required this.subcategory,
  });

  final Category category;
  final SubCategory subcategory;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(context.paddingMedium),
      child: Text(
        'No subscreen folder for category "${category.name}". '
        'Add lib/features/new_listing/subscreens/<snake_case>/ and wire it in new_listing_subscreen_resolver.dart.',
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: Theme.of(context).colorScheme.onSurfaceVariant,
        ),
      ),
    );
  }
}
