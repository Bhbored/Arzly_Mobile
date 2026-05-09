import 'package:arzly/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final isLight = Theme.of(context).brightness == Brightness.light;
    final elevationShadow = isLight
        ? Colors.grey.withValues(alpha: 0.28)
        : Colors.black.withValues(alpha: 0.35);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: context.paddingMedium,
        vertical: context.spaceSmall * 0.55,
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
            color: colors.onSurfaceVariant.withValues(alpha: 0.75),
          ),
          SizedBox(width: context.paddingSmall),
          Expanded(
            child: TextField(
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(color: colors.onSurface),
              decoration: InputDecoration(
                isDense: true,
                filled: true,
                fillColor: colors.surface,
                hintText: 'Search skills, items, or help...',
                hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: colors.onSurfaceVariant.withValues(alpha: 0.7),
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: context.spaceSmall * 1.15,
                ),
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          SizedBox(width: context.paddingSmall * 0.75),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.lightGreenAccent.withValues(alpha: 0.42),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.location_on_rounded,
                  size: 16,
                  color: colors.primary,
                ),
                SizedBox(width: context.paddingSmall * 0.35),
                Text(
                  'Beirut',
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: colors.primary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
