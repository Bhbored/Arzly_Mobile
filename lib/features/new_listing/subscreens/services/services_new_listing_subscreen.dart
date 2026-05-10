import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';
import 'package:arzly/features/new_listing/subscreens/services/widgets/services_subcategory_body.dart';
import 'package:flutter/material.dart';

class ServicesNewListingSubscreen extends StatelessWidget {
  const ServicesNewListingSubscreen({
    super.key,
    required this.category,
    required this.subcategory,
  });

  final Category category;
  final SubCategory subcategory;

  @override
  Widget build(BuildContext context) {
    return ServicesSubcategoryBody(
      category: category,
      subcategory: subcategory,
    );
  }
}
