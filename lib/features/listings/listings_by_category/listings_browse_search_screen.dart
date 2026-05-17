import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/utils/listing_browse_filter.dart';
import 'package:arzly/data/providers/listings/category_listings/category_listings_provider.dart';
import 'package:arzly/data/providers/listings/listing_filters/by_category/by_category_filter_provider.dart';
import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/features/listings/listings_by_category/listing_browse_search_result.dart';
import 'package:arzly/features/listings/shared/listing_browse_search_input.dart';
import 'package:arzly/features/listings/shared/listing_filter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Route<ListingBrowseSearchResult?> createListingsBrowseSearchRoute({
  required Category category,
  ListingBrowseFilter initialFilter = ListingBrowseFilter.empty,
}) {
  return PageRouteBuilder<ListingBrowseSearchResult?>(
    opaque: true,
    fullscreenDialog: true,
    transitionDuration: const Duration(milliseconds: 320),
    reverseTransitionDuration: const Duration(milliseconds: 280),
    pageBuilder: (context, animation, secondaryAnimation) {
      return ListingsBrowseSearchScreen(
        category: category,
        initialFilter: initialFilter,
      );
    },
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final curved = CurvedAnimation(
        parent: animation,
        curve: Curves.easeOutCubic,
        reverseCurve: Curves.easeInCubic,
      );
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, 1),
          end: Offset.zero,
        ).animate(curved),
        child: child,
      );
    },
  );
}

Future<ListingBrowseSearchResult?> openListingsBrowseSearch(
  BuildContext context, {
  required Category category,
  ListingBrowseFilter initialFilter = ListingBrowseFilter.empty,
}) {
  return Navigator.of(context).push<ListingBrowseSearchResult?>(
    createListingsBrowseSearchRoute(
      category: category,
      initialFilter: initialFilter,
    ),
  );
}

class ListingsBrowseSearchScreen extends ConsumerStatefulWidget {
  const ListingsBrowseSearchScreen({
    super.key,
    required this.category,
    this.initialFilter = ListingBrowseFilter.empty,
  });

  final Category category;
  final ListingBrowseFilter initialFilter;

  @override
  ConsumerState<ListingsBrowseSearchScreen> createState() =>
      _ListingsBrowseSearchScreenState();
}

class _ListingsBrowseSearchScreenState
    extends ConsumerState<ListingsBrowseSearchScreen> {
  late Category _category;
  late ListingBrowseFilter _filter;
  late final TextEditingController _searchController;
  late final FocusNode _searchFocusNode;

  @override
  void initState() {
    super.initState();
    _category = widget.category;
    _filter = widget.initialFilter;
    _searchController = TextEditingController(
      text: widget.initialFilter.searchString ?? '',
    );
    _searchFocusNode = FocusNode();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _searchFocusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }

  ListingBrowseFilter _filterForSearchText(String trimmed) {
    if (trimmed.isEmpty) {
      return _filter.copyWith(clearSearchString: true);
    }
    return _filter.copyWith(searchString: trimmed);
  }

  ListingBrowseSearchResult _buildResult(ListingBrowseFilter filter) {
    return ListingBrowseSearchResult(category: _category, filter: filter);
  }

  Future<void> _applySearchToListings(ListingBrowseFilter filter) async {
    setState(() => _filter = filter);
    ref.read(byCategoryFilterProvider(_category.id).notifier).apply(filter);
    await ref.read(categoryListingsProvider(_category.id).notifier).reload();
  }

  void _onSearchChanged(String value) {
    if (!ListingBrowseSearchInput.shouldApplyOnChange(value)) return;
    _applySearchToListings(_filterForSearchText(value.trim()));
  }

  Future<void> _submitSearch() async {
    final trimmed = _searchController.text.trim();
    final hadSearch = widget.initialFilter.searchString?.trim().isNotEmpty ?? false;

    if (trimmed.isEmpty && !hadSearch) {
      if (!mounted) return;
      Navigator.of(context).pop();
      return;
    }

    final filter = _filterForSearchText(trimmed);
    final unchanged = widget.initialFilter.isSameAs(filter);
    if (!unchanged) {
      await _applySearchToListings(filter);
    }
    if (!mounted) return;
    Navigator.of(context).pop(unchanged ? null : _buildResult(filter));
  }

  void _popWithoutApplyingSearch() {
    Navigator.of(context).pop();
  }

  Future<void> _clearSearchField() async {
    _searchController.clear();
    final filter = _filter.copyWith(clearSearchString: true);
    await _applySearchToListings(filter);
  }

  Future<void> _openQuickFilter() async {
    final result = await openListingFilterPage(
      context,
      category: _category,
      initialFilter: _filter,
    );

    if (!mounted || result == null) return;

    setState(() {
      _category = result.category;
      _filter = result.filter.copyWith(
        searchString: _searchController.text.trim().isEmpty
            ? null
            : _searchController.text.trim(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) _popWithoutApplyingSearch();
      },
      child: Scaffold(
        backgroundColor: colors.surfaceContainerLowest,
        appBar: AppBar(
          backgroundColor: colors.surfaceContainerLowest,
          elevation: 0,
          scrolledUnderElevation: 0,
          automaticallyImplyLeading: false,
          leadingWidth: context.screenWidth * 0.52,
          titleSpacing: 0,
          leading: Row(
            children: [
              IconButton(
                onPressed: _popWithoutApplyingSearch,
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
              ),
              TextButton(
                onPressed: _openQuickFilter,
                child: Text(
                  'Quick Filter',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colors.primary,
                      ),
                ),
              ),
            ],
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: ListingBrowseSearchInput(
                      controller: _searchController,
                      focusNode: _searchFocusNode,
                      hintText: 'Search listings...',
                      onChanged: _onSearchChanged,
                      onSubmitted: () => _submitSearch(),
                    ),
                  ),
                  TextButton(
                    onPressed: _clearSearchField,
                    child: Text(
                      'Clear',

                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colors.primary,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: context.spaceSmall),
              Text(
                'Searching in "${_category.name}"',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: colors.onSurfaceVariant,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
