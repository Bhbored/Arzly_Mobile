import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';
import 'package:arzly/features/new_listing/shared/placeholder/default_subcategory_placeholder.dart';
import 'package:flutter/material.dart';

class HobbiesSubcategoryBody extends StatelessWidget {
  const HobbiesSubcategoryBody({
    super.key,
    required this.category,
    required this.subcategory,
  });

  final Category category;
  final SubCategory subcategory;

  @override
  Widget build(BuildContext context) {
    return DefaultSubcategoryPlaceholder(
      category: category,
      subcategory: subcategory,
      listingOwnedFolder: 'leisure_and_interests',
    );
  }
}
