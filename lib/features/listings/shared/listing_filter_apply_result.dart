import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/features/listings/shared/listing_browse_filter.dart';

class ListingFilterApplyResult {
  const ListingFilterApplyResult({
    required this.filter,
    required this.category,
  });

  final ListingBrowseFilter filter;
  final Category category;
}
