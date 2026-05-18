class SubcategoryListingKey {
  const SubcategoryListingKey({
    required this.categoryId,
    required this.subcategoryId,
  });

  final String categoryId;
  final String subcategoryId;

  @override
  bool operator ==(Object other) {
    return other is SubcategoryListingKey &&
        other.categoryId == categoryId &&
        other.subcategoryId == subcategoryId;
  }

  @override
  int get hashCode => Object.hash(categoryId, subcategoryId);
}
