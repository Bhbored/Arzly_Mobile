import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/features/listings/listings_by_category/widgets/listings_browse_search_tile.dart';
import 'package:arzly/features/listings/listings_by_subcategory/widgets/listings_browse_subcategory_action_chips.dart';
import 'package:flutter/material.dart';

class ListingsBrowseSubcategoryTopSection extends StatelessWidget {
  const ListingsBrowseSubcategoryTopSection({
    super.key,
    required this.category,
    required this.searchTerm,
    required this.onSearchTap,
    required this.onSearchClear,
    required this.onFiltersPressed,
    required this.onLocationPressed,
    required this.onSubcategoryFilterPressed,
    required this.locationLabel,
    required this.subcategoryFilterLabel,
    required this.showBrowseFilterBadge,
    required this.showSubcategoryFilterBadge,
  });

  final Category category;
  final String? searchTerm;
  final VoidCallback onSearchTap;
  final VoidCallback onSearchClear;
  final VoidCallback onFiltersPressed;
  final VoidCallback onLocationPressed;
  final VoidCallback onSubcategoryFilterPressed;
  final String locationLabel;
  final String subcategoryFilterLabel;
  final bool showBrowseFilterBadge;
  final bool showSubcategoryFilterBadge;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        ListingsBrowseSearchTile(
          categoryName: category.name,
          searchTerm: searchTerm,
          onTap: onSearchTap,
          onClear: onSearchClear,
        ),
        SizedBox(height: context.spaceMedium),
        ListingsBrowseSubcategoryActionChips(
          onFiltersPressed: onFiltersPressed,
          onLocationPressed: onLocationPressed,
          onSubcategoryFilterPressed: onSubcategoryFilterPressed,
          locationLabel: locationLabel,
          subcategoryFilterLabel: subcategoryFilterLabel,
          showBrowseFilterBadge: showBrowseFilterBadge,
          showSubcategoryFilterBadge: showSubcategoryFilterBadge,
        ),
      ],
    );
  }
}
