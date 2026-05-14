import 'package:arzly/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class HousesForSaleSingleSelectChips<T> extends StatelessWidget {
  const HousesForSaleSingleSelectChips({
    super.key,
    required this.values,
    required this.selected,
    required this.onChanged,
    required this.labelOf,
  });

  final List<T> values;
  final T? selected;
  final ValueChanged<T?> onChanged;
  final String Function(T value) labelOf;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final chipTheme = Theme.of(context).chipTheme;

    return Wrap(
      spacing: context.paddingSmall,
      runSpacing: context.spaceSmall,
      children: [
        for (final v in values)
          ChoiceChip(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(context.borderRadiusLarge),
            ),
            label: Text(labelOf(v)),
            selected: selected == v,
            showCheckmark: false,
            visualDensity: VisualDensity.compact,
            padding: EdgeInsets.symmetric(
              horizontal: context.paddingMedium,
              vertical: context.spaceSmall,
            ),
            selectedColor: scheme.secondaryContainer,
            labelStyle: chipTheme.labelStyle?.copyWith(
              color: selected == v
                  ? scheme.onSecondaryContainer
                  : scheme.onSurface,
              fontWeight:
                  selected == v ? FontWeight.w600 : FontWeight.w500,
            ),
            side: BorderSide(color: scheme.outline.withValues(alpha: 0.45)),
            onSelected: (on) {
              if (on) {
                onChanged(v);
              } else {
                onChanged(null);
              }
            },
          ),
      ],
    );
  }
}
