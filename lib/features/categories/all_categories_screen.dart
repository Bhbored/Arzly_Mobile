import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/features/categories/widgets/category_list_avatar.dart';
import 'package:arzly/features/subcategory/subcategory_screen.dart';
import 'package:flutter/material.dart';

class AllCategoriesScreen extends StatelessWidget {
  final List<Category> categories;

  const AllCategoriesScreen({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final pageColor = colors.surfaceContainerLowest;

    void _onCategoryPressed(Category category) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SubcategoryScreen(category: category),
        ),
      );
    }

    return Scaffold(
      backgroundColor: pageColor,
      appBar: AppBar(
        backgroundColor: pageColor,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        titleSpacing: 0,
        title: Text(
          'All Categories',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w700,
            color: colors.onSurface,
          ),
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(
          horizontal: context.paddingMedium,
          vertical: context.spaceMedium,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return Padding(
            padding: EdgeInsets.only(bottom: context.spaceSmall),
            child: Material(
              color: colors.surfaceContainerLowest,
              borderRadius: BorderRadius.circular(16),
              child: InkWell(
                borderRadius: BorderRadius.circular(16),
                onTap: () => _onCategoryPressed(category),
                child: ListTile(
                  minTileHeight: 72,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: context.paddingSmall * 1.4,
                    vertical: context.spaceSmall * 0.35,
                  ),
                  leading: CategoryListAvatar(category: category),
                  title: Text(
                    category.name,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: Icon(
                    Icons.chevron_right_rounded,
                    color: colors.onSurfaceVariant,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
