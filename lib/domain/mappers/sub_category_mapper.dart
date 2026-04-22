import 'package:arzly/data/dtos/response/subcategory/sub_category_response.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';

extension SubCategoryResponseMapper on SubCategoryResponse {
  SubCategory toEntity() => SubCategory(
        id: id,
        categoryId: categoryId,
        name: name,
        description: description,
        itemsCount: itemsCount,
      );
}
