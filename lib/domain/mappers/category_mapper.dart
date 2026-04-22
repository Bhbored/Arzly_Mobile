import 'package:arzly/data/dtos/response/category/category_response.dart';
import 'package:arzly/domain/entities/category/category.dart';

extension CategoryResponseMapper on CategoryResponse {
  Category toEntity() => Category(
        id: id,
        name: name,
        description: description,
        itemsCount: itemsCount,
        imageUrl: imageUrl,
      );
}
