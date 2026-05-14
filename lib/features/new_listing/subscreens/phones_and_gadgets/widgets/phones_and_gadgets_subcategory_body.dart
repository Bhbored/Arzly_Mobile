import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';
import 'package:arzly/features/new_listing/shared/placeholder/default_subcategory_placeholder.dart';
import 'package:flutter/material.dart';

class PhonesAndGadgetsSubcategoryBody extends StatelessWidget {
  const PhonesAndGadgetsSubcategoryBody({
    super.key,
    required this.category,
    required this.subcategory,
  });

  static const String mobilePhones = 'Mobile Phones';
  static const String mobileAccessories = 'Mobile Accessories';
  static const String mobileNumbers = 'Mobile Numbers';
  static const String smartWatches = 'Smart Watches';

  final Category category;
  final SubCategory subcategory;

  @override
  Widget build(BuildContext context) {
    return DefaultSubcategoryPlaceholder(
      category: category,
      subcategory: subcategory,
      listingOwnedFolder: 'phones_and_gadgets',
    );
  }
}
