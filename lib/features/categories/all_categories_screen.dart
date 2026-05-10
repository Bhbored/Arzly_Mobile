import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/features/categories/category_picker.dart';
import 'package:arzly/features/categories/widgets/all_categories_list.dart';
import 'package:flutter/material.dart';

class AllCategoriesScreen extends StatelessWidget {
  final List<Category> categories;
  final CategoryPickerMode mode;

  const AllCategoriesScreen({
    super.key,
    required this.categories,
    this.mode = CategoryPickerMode.read,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final pageColor = colors.surfaceContainerLowest;

    return Scaffold(
      backgroundColor: pageColor,
      appBar: AppBar(
        backgroundColor: pageColor,
        elevation: 0,
        scrolledUnderElevation: 0,
        leadingWidth: 56,
        leading: mode == CategoryPickerMode.read
            ? IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
              )
            : IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: Icon(Icons.close_rounded, color: colors.onSurface),
              ),
        titleSpacing: 0,
        centerTitle: false,
        title: mode == CategoryPickerMode.read
            ? Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'All Categories',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: colors.onSurface,
                        height: 1,
                      ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            : const SizedBox.shrink(),
      ),
      body: AllCategoriesList(
        categories: categories,
        mode: mode,
        onWritePick: mode == CategoryPickerMode.write
            ? (pick) => Navigator.of(context).pop(pick)
            : null,
      ),
    );
  }
}
