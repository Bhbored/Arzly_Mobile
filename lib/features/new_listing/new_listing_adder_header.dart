import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';
import 'package:arzly/features/categories/widgets/category_list_avatar.dart';
import 'package:flutter/foundation.dart' show ValueListenable;
import 'package:flutter/material.dart';

class NewListingAdderHeader extends StatelessWidget {
  const NewListingAdderHeader({
    super.key,
    required this.category,
    required this.subcategory,
    this.carForSaleStepListenable,
    this.carForSaleStepTotal = 2,
  });

  final Category category;
  final SubCategory subcategory;

  final ValueListenable<int>? carForSaleStepListenable;
  final int carForSaleStepTotal;

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
          if (carForSaleStepListenable != null) ...[
            SizedBox(width: context.paddingSmall),
            ValueListenableBuilder<int>(
              valueListenable: carForSaleStepListenable!,
              builder: (context, step, _) {
                final clamped = step.clamp(0, carForSaleStepTotal - 1);
                final progress = (clamped + 1) / carForSaleStepTotal;
                return SizedBox(
                  width: 40,
                  height: 40,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CircularProgressIndicator(
                        value: progress,
                        strokeWidth: 3,
                        backgroundColor: Colors.lightGreenAccent.withValues(
                          alpha: 0.6,
                        ),
                        color: colors.primary,
                      ),
                      Text(
                        '${clamped + 1}/$carForSaleStepTotal',
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: context.screenWidth * 0.035,
                          color: colors.onSurface,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ],
      ),
    );
  }
}
