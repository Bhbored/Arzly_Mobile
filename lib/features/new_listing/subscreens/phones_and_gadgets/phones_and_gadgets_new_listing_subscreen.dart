import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';
import 'package:arzly/features/new_listing/subscreens/phones_and_gadgets/widgets/phones_and_gadgets_subcategory_body.dart';
import 'package:flutter/material.dart';

class PhonesAndGadgetsNewListingSubscreen extends StatelessWidget {
  const PhonesAndGadgetsNewListingSubscreen({
    super.key,
    required this.category,
    required this.subcategory,
  });

  final Category category;
  final SubCategory subcategory;

  @override
  Widget build(BuildContext context) {
    return PhonesAndGadgetsSubcategoryBody(
      category: category,
      subcategory: subcategory,
    );
  }
}
