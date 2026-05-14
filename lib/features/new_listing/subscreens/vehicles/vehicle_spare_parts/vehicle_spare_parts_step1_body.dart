import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/listing_owned/motors/part_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/vehicle_type.dart';
import 'package:arzly/data/providers/new_listing/temp_listing_draft/temp_listing_draft_holder.dart';
import 'package:arzly/data/providers/new_listing/temp_vehicles_details/temp_vehicles_details_holder.dart';
import 'package:arzly/features/new_listing/shared/form/listing_form_section_divider.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/cars_for_sale/cars_for_sale_brand_avatar.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/pickers/car_brand_picker_page.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/pickers/models/car_brand_selection.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/shared/cars_for_sale_style_dropdown_field.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/widgets/shared/vehicle_condition_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VehicleSparePartsStep1Body extends ConsumerStatefulWidget {
  const VehicleSparePartsStep1Body({
    super.key,
    required this.formKey,
    required this.requireStepFieldErrors,
  });

  final GlobalKey<FormState> formKey;
  final bool requireStepFieldErrors;

  @override
  ConsumerState<VehicleSparePartsStep1Body> createState() =>
      _VehicleSparePartsStep1BodyState();
}

class _VehicleSparePartsStep1BodyState
    extends ConsumerState<VehicleSparePartsStep1Body> {
  Future<void> _openBrandPicker() async {
    final picked = await Navigator.of(context).push<CarBrandSelection>(
      MaterialPageRoute(builder: (context) => const CarBrandPickerPage()),
    );
    if (picked != null && mounted) {
      ref.read(tempVehiclesDetailsHolderProvider.notifier).update(
            (d) => d.copyWith(
              carBrand: picked.name,
              carBrandLogoUrl: picked.logoUrl,
            ),
          );
      ref.read(tempListingDraftHolderProvider.notifier).update(
            (l) => l.copyWith(
              pickupLocation: kListingDraftPickupPlaceholder,
              pickupLocationId: '',
            ),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    final veh = ref.watch(tempVehiclesDetailsHolderProvider);
    final scheme = Theme.of(context).colorScheme;
    final pageBg = scheme.surfaceContainerLowest;
    final valueBlockHeight = (context.screenHeight * 0.048).clamp(44.0, 56.0);
    final leadingSide = CarsForSaleBrandAvatar.leadingExtent(context);
    final menuRadius = BorderRadius.circular(context.borderRadiusMedium);
    final fieldsResetKey = veh.carBrand;

    final brandSelection = veh.carBrand == null
        ? null
        : CarBrandSelection(
            name: veh.carBrand!,
            logoUrl: veh.carBrandLogoUrl ?? '',
          );

    final brandError =
        widget.requireStepFieldErrors && veh.carBrand == null
            ? 'Choose a brand'
            : null;
    final conditionError =
        widget.requireStepFieldErrors && veh.condition == null
            ? 'Choose condition'
            : null;

    return Form(
      key: widget.formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.paddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _SparePartsBrandSection(
              pageBg: pageBg,
              scheme: scheme,
              leadingSide: leadingSide,
              valueBlockHeight: valueBlockHeight,
              brandSelection: brandSelection,
              carBrand: veh.carBrand,
              brandError: brandError,
              onOpenPicker: _openBrandPicker,
            ),
            const ListingFormSectionDivider(),
            Text(
              'Part type',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: scheme.onSurface,
                  ),
            ),
            SizedBox(height: context.spaceSmall),
            CarsForSaleStyleDropdownField<PartType>(
              fieldsResetKey: fieldsResetKey,
              fieldSuffix: 'spare_part_type',
              value: veh.partType,
              onChanged: (v) => ref
                  .read(tempVehiclesDetailsHolderProvider.notifier)
                  .update((d) => d.copyWith(partType: v)),
              hintText: 'Select part type',
              validationMessage: 'Choose part type',
              showRequiredErrors: widget.requireStepFieldErrors,
              pageBg: pageBg,
              scheme: scheme,
              menuRadius: menuRadius,
              items: [
                for (final t in PartType.values)
                  DropdownMenuItem(value: t, child: Text(t.label)),
              ],
            ),
            SizedBox(height: context.spaceSmall),
            Text(
              'Vehicle type',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: scheme.onSurface,
                  ),
            ),
            SizedBox(height: context.spaceSmall),
            CarsForSaleStyleDropdownField<VehicleType>(
              fieldsResetKey: fieldsResetKey,
              fieldSuffix: 'spare_vehicle_type',
              value: veh.vehicleType,
              onChanged: (v) => ref
                  .read(tempVehiclesDetailsHolderProvider.notifier)
                  .update((d) => d.copyWith(vehicleType: v)),
              hintText: 'Select vehicle type',
              validationMessage: 'Choose vehicle type',
              showRequiredErrors: widget.requireStepFieldErrors,
              pageBg: pageBg,
              scheme: scheme,
              menuRadius: menuRadius,
              items: [
                for (final t in VehicleType.values)
                  DropdownMenuItem(value: t, child: Text(t.label)),
              ],
            ),
            SizedBox(height: context.spaceSmall),
            Text(
              'Condition',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: scheme.onSurface,
                  ),
            ),
            SizedBox(height: context.spaceSmall),
            VehicleConditionField(
              value: veh.condition,
              onChanged: (v) {
                ref.read(tempVehiclesDetailsHolderProvider.notifier).update(
                      (d) => d.copyWith(condition: v),
                    );
              },
            ),
            if (conditionError != null) ...[
              SizedBox(height: context.spaceSmall * 0.5),
              Text(
                conditionError,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: scheme.error,
                    ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _SparePartsBrandSection extends StatelessWidget {
  const _SparePartsBrandSection({
    required this.pageBg,
    required this.scheme,
    required this.leadingSide,
    required this.valueBlockHeight,
    required this.brandSelection,
    required this.carBrand,
    required this.brandError,
    required this.onOpenPicker,
  });

  final Color pageBg;
  final ColorScheme scheme;
  final double leadingSide;
  final double valueBlockHeight;
  final CarBrandSelection? brandSelection;
  final String? carBrand;
  final String? brandError;
  final VoidCallback onOpenPicker;

  @override
  Widget build(BuildContext context) {
    final err = brandError;
    return Column(
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
          onTap: onOpenPicker,
          leading: CarsForSaleBrandAvatar(brand: brandSelection),
          title: _SparePartsValueLine(
            height: valueBlockHeight,
            text: carBrand ?? 'Choose brand',
            isPlaceholder: carBrand == null,
          ),
          trailing: Icon(
            Icons.chevron_right_rounded,
            color: scheme.onSurfaceVariant,
          ),
        ),
        if (err != null) ...[
          SizedBox(height: context.spaceSmall * 0.5),
          Text(
            err,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: scheme.error,
                ),
          ),
        ],
      ],
    );
  }
}

class _SparePartsValueLine extends StatelessWidget {
  const _SparePartsValueLine({
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
