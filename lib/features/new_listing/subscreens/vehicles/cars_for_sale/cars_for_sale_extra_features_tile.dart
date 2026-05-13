import 'package:arzly/core/enums/listing_owned/motors/car_feature.dart';
import 'package:arzly/core/utils/car_features_helper.dart';
import 'package:arzly/features/new_listing/shared/inputs/car_picker_search_decoration.dart';
import 'package:flutter/material.dart';

class CarsForSaleExtraFeaturesTile extends StatelessWidget {
  const CarsForSaleExtraFeaturesTile({
    super.key,
    required this.selectedFeatures,
    required this.pageBg,
    required this.onTap,
  });

  final List<CarFeature> selectedFeatures;
  final Color pageBg;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final summary = formatCarFeaturesSummary(selectedFeatures);
    final isPlaceholder = selectedFeatures.isEmpty;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(5),
      child: InputDecorator(
        decoration: carForSaleVersionFieldDecoration(
          context,
          pageBg,
          scheme,
          hintText: 'Choose extra features',
        ).copyWith(isDense: true),
        child: Row(
          children: [
            Expanded(
              child: Text(
                summary,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: isPlaceholder
                      ? scheme.onSurfaceVariant
                      : scheme.onSurface,
                ),
              ),
            ),
            Icon(
              Icons.chevron_right_rounded,
              color: scheme.onSurfaceVariant,
            ),
          ],
        ),
      ),
    );
  }
}
