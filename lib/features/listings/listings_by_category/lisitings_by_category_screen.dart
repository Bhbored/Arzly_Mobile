import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/location_preset.dart';
import 'package:arzly/core/exceptions/api_exception.dart';
import 'package:arzly/core/utils/listing_browse_filter.dart';
import 'package:arzly/data/providers/listings/category_listings/category_listings_provider.dart';
import 'package:arzly/data/providers/listings/listing_filters/by_category/by_category_filter_provider.dart';
import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/listing/listing.dart';
import 'package:arzly/features/listings/listings_by_category/card_states/category_listing_card.dart';
import 'package:arzly/features/listings/listings_by_category/listing_browse_search_result.dart';
import 'package:arzly/features/listings/listings_by_category/listings_browse_search_screen.dart';
import 'package:arzly/features/listings/listings_by_category/widgets/listings_browse_top_section.dart';
import 'package:arzly/features/listings/shared/listing_filter_apply_result.dart';
import 'package:arzly/features/listings/shared/listing_filter_screen.dart';
import 'package:arzly/features/listings/shared/listing_location_filter_labels.dart';
import 'package:arzly/features/shared/skeletons/listing_browse_list_skeleton.dart';
import 'package:arzly/features/shared/widgets/empty_state_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListingsByCategoryScreen extends ConsumerStatefulWidget {
  const ListingsByCategoryScreen({super.key, required this.category});

  final Category category;

  @override
  ConsumerState<ListingsByCategoryScreen> createState() =>
      _ListingsByCategoryScreenState();
}

class _ListingsByCategoryScreenState
    extends ConsumerState<ListingsByCategoryScreen> {
  Category? _selectedCategory;

  Category get _category => _selectedCategory ?? widget.category;

  ByCategoryFilterNotifier get _filterNotifier =>
      ref.read(byCategoryFilterProvider(_category.id).notifier);

  ListingBrowseFilter get _filter =>
      ref.watch(byCategoryFilterProvider(_category.id));

  String? get _searchTerm => _filter.searchString;

  Future<void> _handleFilterResult(ListingFilterApplyResult result) async {
    final categoryChanged = result.category.id != _category.id;
    final searchTerm = _searchTerm;

    if (categoryChanged) {
      setState(() => _selectedCategory = result.category);
    }

    final filter = result.filter.copyWith(searchString: searchTerm);
    ref.read(byCategoryFilterProvider(result.category.id).notifier).apply(filter);

    if (categoryChanged) {
      await ref.read(categoryListingsProvider(result.category.id).future);
    }

    await ref.read(categoryListingsProvider(result.category.id).notifier).reload();
  }

  Future<void> _handleSearchResult(ListingBrowseSearchResult result) async {
    final categoryId = result.category.id;
    final categoryChanged = categoryId != _category.id;
    final currentFilter = ref.read(byCategoryFilterProvider(categoryId));

    if (!categoryChanged && currentFilter.isSameAs(result.filter)) {
      return;
    }

    if (categoryChanged) {
      setState(() => _selectedCategory = result.category);
    }

    ref.read(byCategoryFilterProvider(categoryId).notifier).apply(result.filter);

    if (categoryChanged) {
      await ref.read(categoryListingsProvider(categoryId).future);
    }

    await ref.read(categoryListingsProvider(categoryId).notifier).reload();
  }

  Future<void> _openSearch() async {
    final result = await openListingsBrowseSearch(
      context,
      category: _category,
      initialFilter: _filter,
    );

    if (!mounted || result == null) return;
    await _handleSearchResult(result);
  }

  Future<void> _clearSearch() async {
    _filterNotifier.apply(_filter.copyWith(clearSearchString: true));
    await ref.read(categoryListingsProvider(_category.id).notifier).reload();
  }

  Future<void> _openFilter() async {
    final result = await openListingFilterPage(
      context,
      category: _category,
      initialFilter: _filter,
    );

    if (!mounted || result == null) return;
    await _handleFilterResult(result);
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final listingsAsync = ref.watch(categoryListingsProvider(_category.id));

    return Scaffold(
      backgroundColor: colors.surfaceContainerLowest,
      appBar: AppBar(
        backgroundColor: colors.surfaceContainerLowest,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        titleSpacing: 0,
        title: Text(
          _category.name,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.paddingMedium,
          vertical: context.spaceSmall,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListingsBrowseTopSection(
              category: _category,
              searchTerm: _searchTerm,
              onSearchTap: _openSearch,
              onSearchClear: _clearSearch,
              onFiltersPressed: _openFilter,
              onLocationPressed: _openFilter,
              locationLabel: _filter.locationPreset?.label ??
                  ListingLocationFilterLabels.allAreas,
              showFilterBadge: _filter.hasActiveFilters,
            ),
            SizedBox(height: context.spaceSmall),
            Expanded(
              child: listingsAsync.when(
                data: (listings) => _ListingsBrowseResults(
                  listings: listings,
                  categoryName: _category.name,
                  onEditFilters: _openFilter,
                ),
                loading: () => const ListingBrowseListSkeleton(itemCount: 5),
                error: (error, _) => _BrowseErrorState(error: error),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ListingsBrowseResults extends StatelessWidget {
  const _ListingsBrowseResults({
    required this.listings,
    required this.categoryName,
    required this.onEditFilters,
  });

  final List<Listing> listings;
  final String categoryName;
  final VoidCallback onEditFilters;

  @override
  Widget build(BuildContext context) {
    if (listings.isEmpty) {
      return EmptyStateView(
        icon: Icons.inventory_2_outlined,
        title: 'No listings found',
        message: 'Try adjusting your filters or check back later.',
        actionLabel: 'Edit filters',
        onAction: onEditFilters,
      );
    }

    return ListView.separated(
      padding: EdgeInsets.only(
        bottom: context.bottomPadding + context.spaceMedium,
      ),
      itemCount: listings.length,
      separatorBuilder: (_, _) => SizedBox(height: context.spaceSmall),
      itemBuilder: (context, index) {
        return CategoryListingCard(
          listing: listings[index],
          categoryName: categoryName,
        );
      },
    );
  }
}

class _BrowseErrorState extends StatelessWidget {
  const _BrowseErrorState({required this.error});

  final Object error;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final message = error is ApiException
        ? (error as ApiException).userMessage
        : 'Something went wrong';

    return Center(
      child: Text(
        message,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: colors.error,
            ),
      ),
    );
  }
}
