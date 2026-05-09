import 'package:arzly/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class PickupLocationFormHeader extends StatelessWidget {
  const PickupLocationFormHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            color: cs.primaryContainer,
            borderRadius: BorderRadius.circular(context.borderRadiusLarge),
            border: Border.all(
              color: cs.outlineVariant.withValues(alpha: 0.35),
            ),
            boxShadow: [
              BoxShadow(
                color: cs.primary.withValues(alpha: 0.16),
                blurRadius: 14,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(context.paddingSmall + 2),
            child: Icon(
              Icons.maps_home_work_rounded,
              color: cs.onPrimaryContainer,
              size: 28,
            ),
          ),
        ),
        SizedBox(width: context.paddingMedium),
        Expanded(
          child: Text(
            'Meet-up details and GPS help buyers find you on the map.',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: cs.onSurfaceVariant,
                  height: 1.4,
                ),
          ),
        ),
      ],
    );
  }
}
