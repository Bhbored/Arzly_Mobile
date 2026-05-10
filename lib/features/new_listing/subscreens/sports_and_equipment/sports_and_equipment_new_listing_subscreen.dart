import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';
import 'package:arzly/features/new_listing/subscreens/sports_and_equipment/widgets/sports_and_equipment_subcategory_body.dart';
import 'package:flutter/material.dart';

class SportsAndEquipmentNewListingSubscreen extends StatelessWidget {
  const SportsAndEquipmentNewListingSubscreen({
    super.key,
    required this.category,
    required this.subcategory,
  });

  final Category category;
  final SubCategory subcategory;

  @override
  Widget build(BuildContext context) {
    return SportsAndEquipmentSubcategoryBody(
      category: category,
      subcategory: subcategory,
    );
  }
}
