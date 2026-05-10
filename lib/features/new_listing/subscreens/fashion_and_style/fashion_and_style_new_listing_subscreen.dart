import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';
import 'package:arzly/features/new_listing/subscreens/fashion_and_style/widgets/fashion_and_style_subcategory_body.dart';
import 'package:flutter/material.dart';

class FashionAndStyleNewListingSubscreen extends StatelessWidget {
  const FashionAndStyleNewListingSubscreen({
    super.key,
    required this.category,
    required this.subcategory,
  });

  final Category category;
  final SubCategory subcategory;

  @override
  Widget build(BuildContext context) {
    return FashionAndStyleSubcategoryBody(
      category: category,
      subcategory: subcategory,
    );
  }
}
