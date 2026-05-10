import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';
import 'package:arzly/features/new_listing/subscreens/kids_and_babies/widgets/kids_and_babies_subcategory_body.dart';
import 'package:flutter/material.dart';

class KidsAndBabiesNewListingSubscreen extends StatelessWidget {
  const KidsAndBabiesNewListingSubscreen({
    super.key,
    required this.category,
    required this.subcategory,
  });

  final Category category;
  final SubCategory subcategory;

  @override
  Widget build(BuildContext context) {
    return KidsAndBabiesSubcategoryBody(
      category: category,
      subcategory: subcategory,
    );
  }
}
