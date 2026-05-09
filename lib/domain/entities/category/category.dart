import 'package:freezed_annotation/freezed_annotation.dart';
part 'category.freezed.dart';

@freezed
sealed class Category with _$Category {
  const factory Category({
    required String id,
    required String name,
    String? description,
    @Default(0) int itemsCount,
    String? imageUrl,
  }) = _Category;
}
