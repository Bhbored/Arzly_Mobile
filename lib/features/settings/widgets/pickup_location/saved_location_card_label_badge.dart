import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/listing/location_label.dart';
import 'package:flutter/material.dart';

class SavedLocationCardLabelBadge extends StatelessWidget {
  const SavedLocationCardLabelBadge({super.key, required this.label});

  final LocationLabel label;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Tooltip(
      message: label.title,
      child: Container(
        width: 36,
        height: 36,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: colors.primaryContainer.withValues(alpha: 0.85),
          borderRadius: BorderRadius.circular(context.borderRadiusMedium - 2),
        ),
        child: Icon(
          label.icon,
          size: 20,
          color: colors.onPrimaryContainer,
        ),
      ),
    );
  }
}
