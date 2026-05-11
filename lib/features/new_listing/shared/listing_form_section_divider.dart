import 'package:arzly/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class ListingFormSectionDivider extends StatelessWidget {
  const ListingFormSectionDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.spaceMedium),
      child: Divider(
        height: 1,
        thickness: 1,
        color: scheme.outlineVariant,
      ),
    );
  }
}
