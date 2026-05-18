import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/exceptions/api_exception.dart';
import 'package:arzly/data/providers/subcategory/subcategory_provider.dart';
import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';
import 'package:arzly/features/categories/category_picker.dart';
import 'package:arzly/features/listings/shared/open_listings_by_category.dart';
import 'package:arzly/features/listings/shared/open_listings_by_subcategory.dart';
import 'package:arzly/features/shared/skeletons/list_tile_column_skeleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SubcategoryScreen extends ConsumerWidget {
  final Category category;
  final CategoryPickerMode mode;

  const SubcategoryScreen({
    super.key,
    required this.category,
    this.mode = CategoryPickerMode.read,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final subcategories = ref.watch(subcategoryProvider(category.id));
    final colors = Theme.of(context).colorScheme;

    void onBrowseAllPressed() {
      openListingsByCategory(context, category: category);
    }

    return Scaffold(
      backgroundColor: colors.surfaceContainerLowest,
      appBar: AppBar(
        backgroundColor: colors.surfaceContainerLowest,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        titleSpacing: 0,
        title: Text(
          category.name,
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.paddingMedium,
          vertical: context.spaceSmall,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (mode == CategoryPickerMode.read)
              TextButton(
                onPressed: onBrowseAllPressed,
                child: Text(
                  'Browse all in ${category.name}',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            Expanded(
              child: subcategories.when(
                data: (items) {
                  final ordered = _subcategoriesWithOtherLast(items);
                  return ListView.builder(
                    itemCount: ordered.length,
                    itemBuilder: (_, index) {
                      final subcategory = ordered[index];
                      return ListTile(
                        tileColor: colors.surfaceContainerLowest,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: context.paddingSmall,
                        ),
                        title: Text(subcategory.name),
                        trailing: Icon(
                          Icons.chevron_right_rounded,
                          color: colors.onSurfaceVariant,
                        ),
                        onTap: () {
                          if (mode == CategoryPickerMode.write) {
                            Navigator.of(context).pop(subcategory);
                            return;
                          }
                          openListingsBySubcategory(
                            context,
                            category: category,
                            subcategory: subcategory,
                          );
                        },
                      );
                    },
                  );
                },
                error: (error, stackTrace) {
                  final message = error is ApiException
                      ? error.userMessage
                      : error.toString();
                  return Center(child: Text(message));
                },
                loading: () => SingleChildScrollView(
                  child: ListTileColumnSkeleton(
                    includeLeading: false,
                    tileBackgroundColor: colors.surfaceContainerLowest,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<SubCategory> _subcategoriesWithOtherLast(List<SubCategory> items) {
  final sorted = List<SubCategory>.from(items);
  sorted.sort((a, b) {
    final aOther = a.name.toLowerCase().contains('other');
    final bOther = b.name.toLowerCase().contains('other');
    if (aOther == bOther) return 0;
    return aOther ? 1 : -1;
  });
  return sorted;
}
