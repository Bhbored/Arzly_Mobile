import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/features/listings/listings_by_category/widgets/listings_browse_action_chips.dart';
import 'package:arzly/features/listings/listings_by_category/widgets/listings_browse_search_tile.dart';
import 'package:flutter/material.dart';

class ListingsBrowseTopSection extends StatelessWidget {
  const ListingsBrowseTopSection({
    super.key,
    required this.category,
    required this.searchTerm,
    required this.onSearchTap,
    required this.onSearchClear,
    required this.onFiltersPressed,
    required this.onLocationPressed,
    required this.locationLabel,
    required this.showFilterBadge,
  });

  final Category category;
  final String? searchTerm;
  final VoidCallback onSearchTap;
  final VoidCallback onSearchClear;
  final VoidCallback onFiltersPressed;
  final VoidCallback onLocationPressed;
  final String locationLabel;
  final bool showFilterBadge;

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
        SizedBox(height: context.spaceSmall),
        ListingsBrowseActionChips(
          onFiltersPressed: onFiltersPressed,
          onLocationPressed: onLocationPressed,
          locationLabel: locationLabel,
          showFilterBadge: showFilterBadge,
        ),
      ],
    );
  }
}
