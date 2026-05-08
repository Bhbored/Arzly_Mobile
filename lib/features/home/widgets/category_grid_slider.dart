import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/features/home/widgets/category_grid_slider/category_grid_item.dart';
import 'package:arzly/features/home/widgets/category_grid_slider/category_grid_slider_header.dart';
import 'package:flutter/material.dart';

class CategoryGridSlider extends StatelessWidget {
  final List<Category> categories;
  final VoidCallback? onSeeAllPressed;

  const CategoryGridSlider({
    super.key,
    required this.categories,
    this.onSeeAllPressed,
  });

  @override
  Widget build(BuildContext context) {
    if (categories.isEmpty) return const SizedBox.shrink();

    return Column(
      children: [
        CategoryGridSliderHeader(onSeeAllPressed: onSeeAllPressed),
        SizedBox(height: context.spaceSmall),
        LayoutBuilder(
          builder: (context, constraints) {
            const gap = 4.0;
            final itemWidth = (constraints.maxWidth - (gap * 4)) / 5;
            return SizedBox(
              height: context.screenHeight * 0.12,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.zero,
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: categories.length,
                itemBuilder: (_, index) {
                  final category = categories[index];
                  return SizedBox(
                    width: itemWidth,
                    child: CategoryGridItem(category: category),
                  );
                },
                separatorBuilder: (_, _) => const SizedBox(width: gap),
              ),
            );
          },
        ),
      ],
    );
  }
}
