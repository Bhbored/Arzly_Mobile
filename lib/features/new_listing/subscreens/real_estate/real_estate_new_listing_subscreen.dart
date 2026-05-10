import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';
import 'package:arzly/features/new_listing/subscreens/real_estate/widgets/real_estate_subcategory_body.dart';
import 'package:flutter/material.dart';

class RealEstateNewListingSubscreen extends StatelessWidget {
  const RealEstateNewListingSubscreen({
    super.key,
    required this.category,
    required this.subcategory,
  });

  final Category category;
  final SubCategory subcategory;

  @override
  Widget build(BuildContext context) {
    return RealEstateSubcategoryBody(
      category: category,
      subcategory: subcategory,
    );
  }
}
