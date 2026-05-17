import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';

enum CategoryPickerMode { read, write, select }

class CategorySubcategoryPick {
  const CategorySubcategoryPick({
    required this.category,
    required this.subcategory,
  });

  final Category category;
  final SubCategory subcategory;
}
