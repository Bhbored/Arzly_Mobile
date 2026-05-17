import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/features/listings/listings_by_category/lisitings_by_category_screen.dart';
import 'package:flutter/material.dart';

void openListingsByCategory(
  BuildContext context, {
  required Category category,
}) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => ListingsByCategoryScreen(category: category),
    ),
  );
}
