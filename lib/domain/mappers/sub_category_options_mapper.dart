import 'package:arzly/data/dtos/response/subcategory_options/sub_category_options_response.dart';
import 'package:arzly/domain/entities/subcategory_options/sub_category_options.dart';

extension SubCategoryOptionsResponseMapper on SubCategoryOptionsResponse {
  SubCategoryOptions toEntity() => SubCategoryOptions(
        id: id,
        subCategoryId: subCategoryId,
        name: name,
        description: description,
        itemsCount: itemsCount,
      );
}
