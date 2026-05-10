import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';
import 'package:arzly/features/categories/category_picker.dart';
import 'package:arzly/features/subcategory/subcategory_screen.dart';
import 'package:flutter/material.dart';

Future<void> pushSubcategoryForMode(
  BuildContext context, {
  required Category category,
  required CategoryPickerMode mode,
  void Function(CategorySubcategoryPick pick)? onWritePick,
}) async {
  final subcategory = await Navigator.push<SubCategory?>(
    context,
    MaterialPageRoute(
      builder: (context) => SubcategoryScreen(category: category, mode: mode),
    ),
  );
  if (!context.mounted) return;
  if (mode == CategoryPickerMode.write &&
      subcategory != null &&
      onWritePick != null) {
    onWritePick(
      CategorySubcategoryPick(category: category, subcategory: subcategory),
    );
  }
}
