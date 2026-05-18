import 'package:arzly/core/utils/listing_browse_filter.dart';
import 'package:arzly/core/utils/subcategory_browse_filter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'by_subcategory_filter_provider.g.dart';

Duration? noListingProviderRetry(int _, Object _) => null;

@Riverpod(retry: noListingProviderRetry, keepAlive: false)
class BySubcategoryFilterNotifier extends _$BySubcategoryFilterNotifier {
  @override
  SubcategoryBrowseFilter build(String subcategoryId) =>
      SubcategoryBrowseFilter.empty;

  void apply(SubcategoryBrowseFilter filter) {
    state = filter;
  }

  void applyBrowse(ListingBrowseFilter browse) {
    state = state.copyWith(browse: browse);
  }

  void applyDetails(Object? details) {
    state = state.copyWith(details: details);
  }

  void refresh() {
    state = SubcategoryBrowseFilter.empty;
  }
}
