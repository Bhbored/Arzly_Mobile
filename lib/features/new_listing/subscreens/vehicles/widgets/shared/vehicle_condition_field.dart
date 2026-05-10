import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/listing_owned/motors/vehicle_condition.dart';
import 'package:flutter/material.dart';

class VehicleConditionField extends StatelessWidget {
  const VehicleConditionField({
    super.key,
    required this.value,
    required this.onChanged,
  });

  final VehicleCondition? value;
  final ValueChanged<VehicleCondition?> onChanged;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final chipTheme = Theme.of(context).chipTheme;

    return Wrap(
      spacing: context.paddingSmall,
      runSpacing: context.spaceSmall,
      children: [
        for (final condition in VehicleCondition.values)
          ChoiceChip(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(context.borderRadiusLarge),
            ),
            label: Text(condition.label),
            selected: value == condition,
            showCheckmark: false,
            visualDensity: VisualDensity.compact,
            padding: EdgeInsets.symmetric(
              horizontal: context.paddingMedium,
              vertical: context.spaceSmall,
            ),
            selectedColor: scheme.secondaryContainer,

            labelStyle: chipTheme.labelStyle?.copyWith(
              color: value == condition
                  ? scheme.onSecondaryContainer
                  : scheme.onSurface,
              fontWeight: value == condition
                  ? FontWeight.w600
                  : FontWeight.w500,
            ),
            side: BorderSide(color: scheme.outline.withValues(alpha: 0.45)),
            onSelected: (selected) {
              if (selected) {
                onChanged(condition);
              } else {
                onChanged(null);
              }
            },
          ),
      ],
    );
  }
}
