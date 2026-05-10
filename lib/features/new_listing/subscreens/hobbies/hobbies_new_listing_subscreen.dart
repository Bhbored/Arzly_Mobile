import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';
import 'package:arzly/features/new_listing/subscreens/hobbies/widgets/hobbies_subcategory_body.dart';
import 'package:flutter/material.dart';

class HobbiesNewListingSubscreen extends StatelessWidget {
  const HobbiesNewListingSubscreen({
    super.key,
    required this.category,
    required this.subcategory,
  });

  final Category category;
  final SubCategory subcategory;

  @override
  Widget build(BuildContext context) {
    return HobbiesSubcategoryBody(category: category, subcategory: subcategory);
  }
}
