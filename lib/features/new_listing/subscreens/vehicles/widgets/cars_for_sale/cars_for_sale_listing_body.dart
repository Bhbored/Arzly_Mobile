import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/models/car_brand_selection.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/widgets/cars_for_sale/cars_for_sale_brand_avatar.dart';
import 'package:flutter/material.dart';

class CarsForSaleListingBody extends StatelessWidget {
  const CarsForSaleListingBody({
    super.key,
    required this.selectedBrand,
    required this.onChooseBrand,
    required this.selectedModel,
    required this.onChooseModel,
  });

  final CarBrandSelection? selectedBrand;
  final VoidCallback onChooseBrand;

  final String? selectedModel;
  final VoidCallback onChooseModel;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final pageBg = scheme.surfaceContainerLowest;
    final valueBlockHeight = (context.screenHeight * 0.048).clamp(44.0, 56.0);
    final leadingSide = CarsForSaleBrandAvatar.leadingExtent(context);

    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: context.paddingMedium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Brand',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: scheme.onSurface,
                ),
              ),
              SizedBox(height: context.spaceSmall),
              ListTile(
                tileColor: pageBg,
                minLeadingWidth: leadingSide,
                horizontalTitleGap: context.paddingSmall,
                contentPadding: EdgeInsets.symmetric(
                  vertical: context.spaceSmall,
                ),
                onTap: onChooseBrand,
                leading: CarsForSaleBrandAvatar(brand: selectedBrand),
                title: _CarsForSaleValueLine(
                  height: valueBlockHeight,
                  text: selectedBrand?.name ?? 'Choose brand',
                  isPlaceholder: selectedBrand == null,
                ),
                trailing: Icon(
                  Icons.chevron_right_rounded,
                  color: scheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
          if (selectedBrand != null) ...[
            SizedBox(height: context.spaceSmall),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Model',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: scheme.onSurface,
                  ),
                ),
                SizedBox(height: context.spaceSmall),
                ListTile(
                  tileColor: pageBg,
                  minLeadingWidth: leadingSide,
                  horizontalTitleGap: context.paddingSmall,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: context.spaceSmall,
                  ),
                  onTap: onChooseModel,
                  leading: _CarsForSaleModelLeading(
                    side: leadingSide,
                    color: scheme.primary,
                  ),
                  title: _CarsForSaleValueLine(
                    height: valueBlockHeight,
                    text: selectedModel ?? 'Choose model',
                    isPlaceholder: selectedModel == null,
                  ),
                  trailing: Icon(
                    Icons.chevron_right_rounded,
                    color: scheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}

class _CarsForSaleModelLeading extends StatelessWidget {
  const _CarsForSaleModelLeading({required this.side, required this.color});

  final double side;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: ColoredBox(
        color: scheme.surfaceContainerLow,
        child: SizedBox(
          width: side,
          height: side,
          child: Center(
            child: Icon(Icons.directions_car_outlined, color: color, size: 28),
          ),
        ),
      ),
    );
  }
}

class _CarsForSaleValueLine extends StatelessWidget {
  const _CarsForSaleValueLine({
    required this.height,
    required this.text,
    required this.isPlaceholder,
  });

  final double height;
  final String text;
  final bool isPlaceholder;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return SizedBox(
      height: height,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontWeight: isPlaceholder ? FontWeight.w500 : FontWeight.w600,
            color: isPlaceholder ? scheme.onSurfaceVariant : scheme.onSurface,
          ),
        ),
      ),
    );
  }
}
