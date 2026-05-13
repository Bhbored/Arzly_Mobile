import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';
import 'package:flutter/material.dart';

class DefaultSubcategoryPlaceholder extends StatelessWidget {
  const DefaultSubcategoryPlaceholder({
    super.key,
    required this.category,
    required this.subcategory,
    required this.listingOwnedFolder,
  });

  final Category category;
  final SubCategory subcategory;
  final String listingOwnedFolder;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      container: true,
      label: 'New listing, ${category.name}, ${subcategory.name}',
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: context.paddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: context.spaceMedium),
            Text(
              'Add listing fields (listing_owned/$listingOwnedFolder) for this subcategory.',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
