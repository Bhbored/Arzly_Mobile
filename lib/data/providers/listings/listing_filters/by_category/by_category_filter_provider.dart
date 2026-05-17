import 'package:arzly/core/utils/listing_browse_filter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'by_category_filter_provider.g.dart';

Duration? noListingProviderRetry(int _, Object _) => null;

@Riverpod(retry: noListingProviderRetry, keepAlive: false)
class ByCategoryFilterNotifier extends _$ByCategoryFilterNotifier {
  @override
  ListingBrowseFilter build(String categoryId) => ListingBrowseFilter.empty;

  void apply(ListingBrowseFilter filter) {
    state = filter;
  }

  void refresh() {
    state = ListingBrowseFilter.empty;
  }
}
