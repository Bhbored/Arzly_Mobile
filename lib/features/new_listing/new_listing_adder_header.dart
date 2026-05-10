import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';
import 'package:arzly/features/categories/widgets/category_list_avatar.dart';
import 'package:flutter/material.dart';

class NewListingAdderHeader extends StatelessWidget {
  const NewListingAdderHeader({
    super.key,
    required this.category,
    required this.subcategory,
  });

  final Category category;
  final SubCategory subcategory;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: context.paddingMedium,
        vertical: context.spaceSmall,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CategoryListAvatar(category: category),
          SizedBox(width: context.paddingSmall * 1.25),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  category.name,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: colors.onSurface,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: context.spaceSmall * 0.35),
                Text(
                  subcategory.name,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: colors.onSurfaceVariant,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
