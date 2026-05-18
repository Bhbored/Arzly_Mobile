import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/location_preset.dart';
import 'package:arzly/core/exceptions/api_exception.dart';
import 'package:arzly/core/utils/subcategory_browse_filter.dart';
import 'package:arzly/core/utils/subcategory_listing_key.dart';
import 'package:arzly/data/providers/listings/listing_filters/by_subcategory/by_subcategory_filter_provider.dart';
import 'package:arzly/data/providers/listings/subcategory_listings/subcategory_listings_provider.dart';
import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/listing/listing.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';
import 'package:arzly/features/listings/listings_by_category/card_states/category_listing_card.dart';
import 'package:arzly/features/listings/listings_by_category/listing_browse_search_result.dart';
import 'package:arzly/features/listings/listings_by_category/listings_browse_search_screen.dart';
import 'package:arzly/features/listings/listings_by_subcategory/filters/open_subcategory_details_filter.dart';
import 'package:arzly/features/listings/listings_by_subcategory/widgets/listings_browse_subcategory_top_section.dart';
import 'package:arzly/features/listings/shared/listing_filter_apply_result.dart';
import 'package:arzly/features/listings/shared/listing_filter_location_picker_screen.dart';
import 'package:arzly/features/listings/shared/listing_filter_screen.dart';
import 'package:arzly/features/listings/shared/listing_location_filter_labels.dart';
import 'package:arzly/features/new_listing/backend_listing_catalog.dart';
import 'package:arzly/features/shared/skeletons/listing_browse_list_skeleton.dart';
import 'package:arzly/features/shared/widgets/empty_state_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListingsBySubcategoryScreen extends ConsumerStatefulWidget {
  const ListingsBySubcategoryScreen({
    super.key,
    required this.category,
    required this.subcategory,
  });

  final Category category;
  final SubCategory subcategory;

  @override
  ConsumerState<ListingsBySubcategoryScreen> createState() =>
      _ListingsBySubcategoryScreenState();
}

class _ListingsBySubcategoryScreenState
    extends ConsumerState<ListingsBySubcategoryScreen> {
  Category? _selectedCategory;

  String get _subcategoryId => widget.subcategory.id;

  Category get _category => _selectedCategory ?? widget.category;

  SubcategoryListingKey get _listingsKey => SubcategoryListingKey(
        categoryId: _category.id,
        subcategoryId: _subcategoryId,
      );

  SubcategoryBrowseFilter get _filter =>
      ref.watch(bySubcategoryFilterProvider(_subcategoryId));

  String? get _searchTerm => _filter.browse.searchString;

  bool get _supportsDetailsFilter {
    final name = _category.name.trim();
    return name == BackendListingCatalog.vehicles ||
        name == BackendListingCatalog.realEstate ||
        name == BackendListingCatalog.phonesAndGadgets;
  }

  Future<void> _reloadListings() async {
    await ref
        .read(subcategoryListingsProvider(_listingsKey).notifier)
        .reload();
  }

  Future<void> _applyFilter(SubcategoryBrowseFilter filter) async {
    ref.read(bySubcategoryFilterProvider(_subcategoryId).notifier).apply(filter);
    await _reloadListings();
  }

  Future<void> _handleFilterResult(ListingFilterApplyResult result) async {
    final searchTerm = _searchTerm;
    final categoryChanged = result.category.id != _category.id;

    if (categoryChanged) {
      setState(() => _selectedCategory = result.category);
      await ref.read(subcategoryListingsProvider(_listingsKey).future);
    }

    final filter = _filter.copyWith(
      browse: result.filter.copyWith(searchString: searchTerm),
    );

    if (filter.isSameAs(_filter)) return;
    await _applyFilter(filter);
  }

  Future<void> _handleSearchResult(ListingBrowseSearchResult result) async {
    final categoryChanged = result.category.id != _category.id;
    final merged = _filter.copyWith(browse: result.filter);

    if (!categoryChanged && merged.isSameAs(_filter)) {
      return;
    }

    if (categoryChanged) {
      setState(() => _selectedCategory = result.category);
      await ref.read(subcategoryListingsProvider(_listingsKey).future);
    }

    await _applyFilter(merged);
  }

  Future<void> _openSearch() async {
    final result = await openListingsBrowseSearch(
      context,
      category: _category,
      initialFilter: _filter.browse,
    );

    if (!mounted || result == null) return;
    await _handleSearchResult(result);
  }

  Future<void> _clearSearch() async {
    final filter = _filter.copyWith(
      browse: _filter.browse.copyWith(clearSearchString: true),
    );
    if (filter.isSameAs(_filter)) return;
    await _applyFilter(filter);
  }

  Future<void> _openBrowseFilter() async {
    final result = await openListingFilterPage(
      context,
      category: _category,
      initialFilter: _filter.browse,
    );

    if (!mounted || result == null) return;
    await _handleFilterResult(result);
  }

  Future<void> _openLocationPicker() async {
    final preset = await openListingFilterLocationPicker(
      context,
      selectedPreset: _filter.browse.locationPreset,
    );

    if (!mounted) return;

    final filter = _filter.copyWith(
      browse: _filter.browse.copyWith(
        locationPreset: preset,
        clearLocationPreset: preset == null,
      ),
    );

    if (filter.isSameAs(_filter)) return;
    await _applyFilter(filter);
  }

  Future<void> _openSubcategoryDetailsFilter() async {
    if (!_supportsDetailsFilter) return;

    final details = await openSubcategoryDetailsFilter(
      context,
      category: _category,
      subcategory: widget.subcategory,
      initialDetails: _filter.details,
    );

    if (!mounted || details == null) return;

    final filter = _filter.copyWith(details: details);
    if (filter.isSameAs(_filter)) return;
    await _applyFilter(filter);
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final listingsAsync = ref.watch(subcategoryListingsProvider(_listingsKey));

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
          widget.subcategory.name,
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
            ListingsBrowseSubcategoryTopSection(
              category: _category,
              searchTerm: _searchTerm,
              onSearchTap: _openSearch,
              onSearchClear: _clearSearch,
              onFiltersPressed: _openBrowseFilter,
              onLocationPressed: _openLocationPicker,
              onSubcategoryFilterPressed: _openSubcategoryDetailsFilter,
              locationLabel: _filter.browse.locationPreset?.label ??
                  ListingLocationFilterLabels.allAreas,
              subcategoryFilterLabel: widget.subcategory.name.trim(),
              showBrowseFilterBadge: _filter.browse.hasActiveFilters,
              showSubcategoryFilterBadge: _filter.hasActiveDetails,
            ),
            SizedBox(height: context.spaceSmall),
            Expanded(
              child: listingsAsync.when(
                data: (listings) => _ListingsBrowseResults(
                  listings: listings,
                  categoryName: _category.name,
                  onEditFilters: _openBrowseFilter,
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
