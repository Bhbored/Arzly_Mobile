import 'package:arzly/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class ListingImagesPrimaryBadge extends StatelessWidget {
  const ListingImagesPrimaryBadge({super.key, this.compact = false});

  final bool compact;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final iconSize = compact ? 14.0 : 16.0;
    final horizontalPadding = compact
        ? context.paddingSmall * 0.45
        : context.paddingSmall * 0.65;
    final verticalPadding = compact
        ? context.spaceSmall * 0.25
        : context.spaceSmall * 0.35;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: scheme.primary,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: scheme.primary.withValues(alpha: 0.28),
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: verticalPadding,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.check_rounded, size: iconSize, color: scheme.onPrimary),
            if (!compact) ...[
              SizedBox(width: context.paddingSmall * 0.25),
              Text(
                'Cover',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: scheme.onPrimary,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
