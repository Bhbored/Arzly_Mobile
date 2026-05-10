import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';
import 'package:arzly/features/new_listing/subscreens/furniture_and_decor/widgets/furniture_and_decor_subcategory_body.dart';
import 'package:flutter/material.dart';

class FurnitureAndDecorNewListingSubscreen extends StatelessWidget {
  const FurnitureAndDecorNewListingSubscreen({
    super.key,
    required this.category,
    required this.subcategory,
  });

  final Category category;
  final SubCategory subcategory;

  @override
  Widget build(BuildContext context) {
    return FurnitureAndDecorSubcategoryBody(
      category: category,
      subcategory: subcategory,
    );
  }
}
