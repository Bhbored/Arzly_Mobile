import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/core/utils/listing_browse_filter.dart';

class ListingBrowseSearchResult {
  const ListingBrowseSearchResult({
    required this.category,
    required this.filter,
  });

  final Category category;
  final ListingBrowseFilter filter;
}
