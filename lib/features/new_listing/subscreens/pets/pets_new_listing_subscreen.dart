import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';
import 'package:arzly/features/new_listing/subscreens/pets/widgets/pets_subcategory_body.dart';
import 'package:flutter/material.dart';

class PetsNewListingSubscreen extends StatelessWidget {
  const PetsNewListingSubscreen({
    super.key,
    required this.category,
    required this.subcategory,
  });

  final Category category;
  final SubCategory subcategory;

  @override
  Widget build(BuildContext context) {
    return PetsSubcategoryBody(category: category, subcategory: subcategory);
  }
}
