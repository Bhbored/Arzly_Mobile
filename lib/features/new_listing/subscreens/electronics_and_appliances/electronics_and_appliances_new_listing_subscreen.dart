import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';
import 'package:arzly/features/new_listing/subscreens/electronics_and_appliances/widgets/electronics_and_appliances_subcategory_body.dart';
import 'package:flutter/material.dart';

class ElectronicsAndAppliancesNewListingSubscreen extends StatelessWidget {
  const ElectronicsAndAppliancesNewListingSubscreen({
    super.key,
    required this.category,
    required this.subcategory,
  });

  final Category category;
  final SubCategory subcategory;

  @override
  Widget build(BuildContext context) {
    return ElectronicsAndAppliancesSubcategoryBody(
      category: category,
      subcategory: subcategory,
    );
  }
}
