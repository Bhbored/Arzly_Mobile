import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/features/categories/category_pick_navigation.dart';
import 'package:arzly/features/categories/category_picker.dart';
import 'package:arzly/features/categories/widgets/category_list_avatar.dart';
import 'package:flutter/material.dart';

class AllCategoriesList extends StatelessWidget {
  final List<Category> categories;
  final CategoryPickerMode mode;
  final void Function(CategorySubcategoryPick pick)? onWritePick;
  final Color? itemBackgroundColor;

  const AllCategoriesList({
    super.key,
    required this.categories,
    required this.mode,
    this.onWritePick,
    this.itemBackgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final tileBg = itemBackgroundColor ?? colors.surfaceContainerLowest;

    return ListView.builder(
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
            color: tileBg,
            borderRadius: BorderRadius.circular(16),
            child: InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () {
                if (mode == CategoryPickerMode.select) {
                  Navigator.of(context).pop(category);
                  return;
                }
                pushSubcategoryForMode(
                  context,
                  category: category,
                  mode: mode,
                  onWritePick: onWritePick,
                );
              },
              child: ListTile(
                tileColor: Colors.transparent,
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
    );
  }
}
