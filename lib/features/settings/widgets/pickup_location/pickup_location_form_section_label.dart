import 'package:arzly/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class PickupLocationFormSectionLabel extends StatelessWidget {
  const PickupLocationFormSectionLabel({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Padding(
      padding: EdgeInsets.only(bottom: context.spaceSmall * 0.6),
      child: Row(
        children: [
          Container(
            width: 3,
            height: 14,
            decoration: BoxDecoration(
              color: cs.primary,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          SizedBox(width: context.spaceSmall),
          Text(
            title.toUpperCase(),
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: cs.onSurfaceVariant,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.1,
                ),
          ),
        ],
      ),
    );
  }
}
