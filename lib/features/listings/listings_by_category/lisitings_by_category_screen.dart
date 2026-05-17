import 'dart:async';

import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/location_preset.dart';
import 'package:arzly/core/exceptions/api_exception.dart';
import 'package:arzly/data/providers/listings/category_listings/category_listings_provider.dart';
import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/features/listings/listings_by_category/card_states/category_listing_card.dart';
import 'package:arzly/features/listings/listings_by_category/widgets/listings_browse_action_chips.dart';
import 'package:arzly/features/listings/listings_by_category/widgets/listings_browse_search_bar.dart';
import 'package:arzly/features/listings/shared/listing_browse_filter.dart';
import 'package:arzly/features/listings/shared/listing_filter_apply_result.dart';
import 'package:arzly/features/listings/shared/listing_filter_screen.dart';
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
  ListingBrowseFilter _filter = ListingBrowseFilter.empty;
  late final TextEditingController _searchController;
  Timer? _searchDebounce;

  Category get _category => _selectedCategory ?? widget.category;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchDebounce?.cancel();
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _applyFilter(ListingBrowseFilter filter) async {
    setState(() => _filter = filter);
    await ref
        .read(categoryListingsProvider(_category.id).notifier)
        .applyFilter(filter);
  }

  Future<void> _handleFilterResult(ListingFilterApplyResult result) async {
    final categoryChanged = result.category.id != _category.id;

    setState(() {
      _selectedCategory = result.category;
      _filter = result.filter.copyWith(searchString: _searchController.text);
    });

    if (categoryChanged) {
      await ref.read(categoryListingsProvider(_category.id).future);
    }

    await ref
        .read(categoryListingsProvider(_category.id).notifier)
        .applyFilter(_filter);
  }

  void _onSearchChanged(String value) {
    _searchDebounce?.cancel();
    _searchDebounce = Timer(const Duration(milliseconds: 400), () {
      _applyFilter(_filter.copyWith(searchString: value));
    });
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
      backgroundColor: colors.surface,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SafeArea(
            bottom: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: context.paddingSmall * 0.25,
                    right: context.paddingMedium,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(Icons.arrow_back_ios_new_rounded),
                      ),
                      Expanded(
                        child: ListingsBrowseSearchBar(
                          controller: _searchController,
                          onChanged: _onSearchChanged,
                          onSubmitted: (value) {
                            _searchDebounce?.cancel();
                            _applyFilter(_filter.copyWith(searchString: value));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                ListingsBrowseActionChips(
                  onFiltersPressed: _openFilter,
                  showFilterBadge: _filter.hasActiveFilters,
                  locationLabel: _filter.locationPreset?.label ?? 'All country',
                  onLocationPressed: _openFilter,
                ),
              ],
            ),
          ),
          Expanded(
            child: listingsAsync.when(
              data: (listings) {
                if (listings.isEmpty) {
                  return EmptyStateView(
                    icon: Icons.inventory_2_outlined,
                    title: 'No listings found',
                    message: 'Try adjusting your filters or check back later.',
                    actionLabel: 'Edit filters',
                    onAction: _openFilter,
                  );
                }

                return RefreshIndicator(
                  color: colors.primary,
                  onRefresh: () => ref
                      .read(categoryListingsProvider(_category.id).notifier)
                      .refresh(),
                  child: ListView.separated(
                    physics: const AlwaysScrollableScrollPhysics(),
                    padding: EdgeInsets.fromLTRB(
                      context.paddingSmall,
                      context.spaceSmall,
                      context.paddingSmall,
                      context.bottomPadding + context.spaceMedium,
                    ),
                    itemCount: listings.length,
                    separatorBuilder: (_, _) =>
                        SizedBox(height: context.spaceSmall),
                    itemBuilder: (context, index) {
                      return CategoryListingCard(
                        listing: listings[index],
                        categoryName: _category.name,
                      );
                    },
                  ),
                );
              },
              loading: () => const ListingBrowseListSkeleton(itemCount: 5),
              error: (error, _) {
                final message = error is ApiException
                    ? error.userMessage
                    : 'Something went wrong';
                return Center(
                  child: Padding(
                    padding: EdgeInsets.all(context.paddingMedium),
                    child: Text(
                      message,
                      textAlign: TextAlign.center,
                      style: Theme.of(
                        context,
                      ).textTheme.bodyLarge?.copyWith(color: colors.error),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
