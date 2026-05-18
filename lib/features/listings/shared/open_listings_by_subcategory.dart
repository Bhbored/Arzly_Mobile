import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';
import 'package:arzly/features/listings/listings_by_subcategory/lisitings_by_subcategory_screen.dart';
import 'package:flutter/material.dart';

void openListingsBySubcategory(
  BuildContext context, {
  required Category category,
  required SubCategory subcategory,
}) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => ListingsBySubcategoryScreen(
        category: category,
        subcategory: subcategory,
      ),
    ),
  );
}
