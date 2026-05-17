import 'package:arzly/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class ListingsBrowseSearchBar extends StatelessWidget {
  const ListingsBrowseSearchBar({
    super.key,
    required this.controller,
    this.onChanged,
    this.onSubmitted,
  });

  final TextEditingController controller;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final isLight = Theme.of(context).brightness == Brightness.light;
    final elevationShadow = isLight
        ? Colors.grey.withValues(alpha: 0.28)
        : Colors.black.withValues(alpha: 0.35);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: context.paddingSmall,
        vertical: context.spaceSmall * 0.5,
      ),
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: elevationShadow,
            blurRadius: 12,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(
            Icons.search,
            size: 22,
            color: colors.onSurfaceVariant.withValues(alpha: 0.75),
          ),
          SizedBox(width: context.paddingSmall * 0.75),
          Expanded(
            child: TextField(
              controller: controller,
              onChanged: onChanged,
              onSubmitted: onSubmitted,
              textInputAction: TextInputAction.search,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: colors.onSurface,
                  ),
              decoration: InputDecoration(
                isDense: true,
                filled: true,
                fillColor: colors.surface,
                hintText: 'Search listings...',
                hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: colors.onSurfaceVariant.withValues(alpha: 0.7),
                    ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: context.spaceSmall,
                ),
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
