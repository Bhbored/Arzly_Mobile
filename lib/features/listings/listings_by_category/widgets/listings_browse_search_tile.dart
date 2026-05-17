import 'package:arzly/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class ListingsBrowseSearchTile extends StatelessWidget {
  const ListingsBrowseSearchTile({
    super.key,
    required this.categoryName,
    required this.searchTerm,
    required this.onTap,
    required this.onClear,
  });

  final String categoryName;
  final String? searchTerm;
  final VoidCallback onTap;
  final VoidCallback onClear;

  bool get _hasSearchTerm =>
      searchTerm != null && searchTerm!.trim().isNotEmpty;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final isLight = Theme.of(context).brightness == Brightness.light;
    final elevationShadow = isLight
        ? Colors.grey.withValues(alpha: 0.28)
        : Colors.black.withValues(alpha: 0.35);

    return Material(
      color: colors.surfaceContainerLowest,
      elevation: 0,
      shadowColor: elevationShadow,
      borderRadius: BorderRadius.circular(5),
      clipBehavior: Clip.antiAlias,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: colors.outlineVariant),
        ),
        child: ListTile(
          onTap: onTap,
          contentPadding: EdgeInsets.symmetric(
            horizontal: context.paddingSmall,
            vertical: context.spaceSmall * 0.15,
          ),
          leading: Icon(
            Icons.search_rounded,
            color: colors.onSurfaceVariant.withValues(alpha: 0.75),
          ),
          title: Text(
            _hasSearchTerm ? searchTerm!.trim() : 'What are you looking for?',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: _hasSearchTerm
                  ? colors.onSurface
                  : colors.onSurfaceVariant,
              fontWeight: _hasSearchTerm ? FontWeight.w500 : FontWeight.w400,
            ),
          ),
          trailing: _hasSearchTerm
              ? IconButton(
                  onPressed: onClear,
                  icon: Icon(
                    Icons.close_rounded,
                    color: colors.onSurfaceVariant,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
