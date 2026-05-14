import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/listing_owned/motors/motorcycle_cc.dart';
import 'package:arzly/core/enums/listing_owned/motors/motorcycle_fuel_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/motorcycle_type.dart';
import 'package:arzly/data/providers/new_listing/temp_listing_draft/temp_listing_draft_holder.dart';
import 'package:arzly/data/providers/new_listing/temp_vehicles_details/temp_vehicles_details_holder.dart';
import 'package:arzly/domain/entities/listing/vehicles_details/vehicles_details.dart';
import 'package:arzly/features/new_listing/shared/form/listing_form_section_divider.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/cars_for_sale/cars_for_sale_brand_avatar.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/shared/cars_for_sale_style_dropdown_field.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/cars_for_sale/cars_for_sale_year_field.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/pickers/models/car_brand_selection.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/pickers/motorcycle_brand_picker_page.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/pickers/motorcycle_model_picker_page.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/widgets/shared/vehicle_condition_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MotorcyclesAtvsStep1Body extends ConsumerStatefulWidget {
  const MotorcyclesAtvsStep1Body({
    super.key,
    required this.formKey,
    required this.requireStepFieldErrors,
  });

  final GlobalKey<FormState> formKey;
  final bool requireStepFieldErrors;

  @override
  ConsumerState<MotorcyclesAtvsStep1Body> createState() =>
      _MotorcyclesAtvsStep1BodyState();
}

class _MotorcyclesAtvsStep1BodyState
    extends ConsumerState<MotorcyclesAtvsStep1Body> {
  late final TextEditingController _yearController;

  @override
  void initState() {
    super.initState();
    final veh = ref.read(tempVehiclesDetailsHolderProvider);
    _yearController = TextEditingController(
      text: veh.year != null ? '${veh.year}' : '',
    );
    _yearController.addListener(() {
      ref.read(tempVehiclesDetailsHolderProvider.notifier).update(
            (d) => d.copyWith(year: parseCarYear(_yearController.text)),
          );
    });
  }

  @override
  void dispose() {
    _yearController.dispose();
    super.dispose();
  }

  Future<void> _openBrandPicker() async {
    final picked = await Navigator.of(context).push<CarBrandSelection>(
      MaterialPageRoute(
        builder: (context) => const MotorcycleBrandPickerPage(),
      ),
    );
    if (picked != null && mounted) {
      ref.read(tempVehiclesDetailsHolderProvider.notifier).update(
            (_) => VehiclesDetails(
              motorcycleBrand: picked.name,
              motorcycleBrandLogoUrl: picked.logoUrl,
            ),
          );
      ref.read(tempListingDraftHolderProvider.notifier).update(
            (l) => l.copyWith(
              pickupLocation: kListingDraftPickupPlaceholder,
              pickupLocationId: '',
            ),
          );
      _yearController.text = '';
    }
  }

  Future<void> _openModelPicker() async {
    final veh = ref.read(tempVehiclesDetailsHolderProvider);
    final brandName = veh.motorcycleBrand;
    if (brandName == null) return;
    final picked = await Navigator.of(context).push<String>(
      MaterialPageRoute(
        builder: (context) => MotorcycleModelPickerPage(brandName: brandName),
      ),
    );
    if (picked != null && mounted) {
      ref.read(tempVehiclesDetailsHolderProvider.notifier).update(
            (d) => d.copyWith(motorcycleModel: picked),
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

    final brandSelection = veh.motorcycleBrand == null
        ? null
        : CarBrandSelection(
            name: veh.motorcycleBrand!,
            logoUrl: veh.motorcycleBrandLogoUrl ?? '',
          );

    final brandError =
        widget.requireStepFieldErrors && veh.motorcycleBrand == null
            ? 'Choose a brand'
            : null;
    final modelError = widget.requireStepFieldErrors &&
            veh.motorcycleBrand != null &&
            veh.motorcycleModel == null
        ? 'Choose a model'
        : null;
    final conditionError =
        widget.requireStepFieldErrors && veh.condition == null
            ? 'Choose condition'
            : null;
    final fuelError = widget.requireStepFieldErrors &&
            veh.motorcycleFuelType == null
        ? 'Choose fuel type'
        : null;

    final fieldsResetKey = veh.motorcycleBrand;

    return Form(
      key: widget.formKey,
      child: Padding(
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
                  onTap: _openBrandPicker,
                  leading: CarsForSaleBrandAvatar(
                    brand: brandSelection,
                    placeholderKind:
                        CarsForSaleBrandAvatarPlaceholderKind.motorcycle,
                  ),
                  title: _MotorcycleValueLine(
                    height: valueBlockHeight,
                    text: veh.motorcycleBrand ?? 'Choose brand',
                    isPlaceholder: veh.motorcycleBrand == null,
                  ),
                  trailing: Icon(
                    Icons.chevron_right_rounded,
                    color: scheme.onSurfaceVariant,
                  ),
                ),
                if (brandError != null) ...[
                  SizedBox(height: context.spaceSmall * 0.5),
                  Text(
                    brandError,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: scheme.error,
                        ),
                  ),
                ],
              ],
            ),
            if (veh.motorcycleBrand != null) ...[
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
                    onTap: _openModelPicker,
                    leading: _MotorcycleModelLeading(
                      side: leadingSide,
                      color: scheme.primary,
                    ),
                    title: _MotorcycleValueLine(
                      height: valueBlockHeight,
                      text: veh.motorcycleModel ?? 'Choose model',
                      isPlaceholder: veh.motorcycleModel == null,
                    ),
                    trailing: Icon(
                      Icons.chevron_right_rounded,
                      color: scheme.onSurfaceVariant,
                    ),
                  ),
                  if (modelError != null) ...[
                    SizedBox(height: context.spaceSmall * 0.5),
                    Text(
                      modelError,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: scheme.error,
                          ),
                    ),
                  ],
                ],
              ),
            ],
            const ListingFormSectionDivider(),
            Text(
              'Type',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: scheme.onSurface,
                  ),
            ),
            SizedBox(height: context.spaceSmall),
            CarsForSaleStyleDropdownField<MotorcycleType>(
              fieldsResetKey: fieldsResetKey,
              fieldSuffix: 'motorcycle_type',
              value: veh.motorcycleType,
              onChanged: (v) => ref
                  .read(tempVehiclesDetailsHolderProvider.notifier)
                  .update((d) => d.copyWith(motorcycleType: v)),
              hintText: 'Select type',
              validationMessage: 'Choose type',
              showRequiredErrors: widget.requireStepFieldErrors,
              pageBg: pageBg,
              scheme: scheme,
              menuRadius: menuRadius,
              items: [
                for (final t in MotorcycleType.values)
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
            SizedBox(height: context.spaceSmall),
            Text(
              'Fuel type',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: scheme.onSurface,
                  ),
            ),
            SizedBox(height: context.spaceSmall),
            _MotorcycleFuelTypeChips(
              value: veh.motorcycleFuelType,
              onChanged: (v) => ref
                  .read(tempVehiclesDetailsHolderProvider.notifier)
                  .update((d) => d.copyWith(motorcycleFuelType: v)),
            ),
            if (fuelError != null) ...[
              SizedBox(height: context.spaceSmall * 0.5),
              Text(
                fuelError,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: scheme.error,
                    ),
              ),
            ],
            SizedBox(height: context.spaceSmall),
            Text(
              'Year',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: scheme.onSurface,
                  ),
            ),
            SizedBox(height: context.spaceSmall),
            CarsForSaleYearField(
              controller: _yearController,
              pageBg: pageBg,
              requiredField: true,
            ),
            SizedBox(height: context.spaceSmall),
            Text(
              'CC',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: scheme.onSurface,
                  ),
            ),
            SizedBox(height: context.spaceSmall),
            CarsForSaleStyleDropdownField<MotorcycleCC>(
              fieldsResetKey: fieldsResetKey,
              fieldSuffix: 'motorcycle_cc',
              value: veh.motorcycleCC,
              onChanged: (v) => ref
                  .read(tempVehiclesDetailsHolderProvider.notifier)
                  .update((d) => d.copyWith(motorcycleCC: v)),
              hintText: 'Select CC range',
              validationMessage: 'Choose CC',
              showRequiredErrors: widget.requireStepFieldErrors,
              pageBg: pageBg,
              scheme: scheme,
              menuRadius: menuRadius,
              items: [
                for (final c in MotorcycleCC.values)
                  DropdownMenuItem(value: c, child: Text(c.label)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _MotorcycleFuelTypeChips extends StatelessWidget {
  const _MotorcycleFuelTypeChips({
    required this.value,
    required this.onChanged,
  });

  final MotorcycleFuelType? value;
  final ValueChanged<MotorcycleFuelType?> onChanged;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final chipTheme = Theme.of(context).chipTheme;

    return Wrap(
      spacing: context.paddingSmall,
      runSpacing: context.spaceSmall,
      children: [
        for (final fuel in MotorcycleFuelType.values)
          ChoiceChip(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(context.borderRadiusLarge),
            ),
            label: Text(fuel.label),
            selected: value == fuel,
            showCheckmark: false,
            visualDensity: VisualDensity.compact,
            padding: EdgeInsets.symmetric(
              horizontal: context.paddingMedium,
              vertical: context.spaceSmall,
            ),
            selectedColor: scheme.secondaryContainer,
            labelStyle: chipTheme.labelStyle?.copyWith(
              color: value == fuel
                  ? scheme.onSecondaryContainer
                  : scheme.onSurface,
              fontWeight:
                  value == fuel ? FontWeight.w600 : FontWeight.w500,
            ),
            side: BorderSide(color: scheme.outline.withValues(alpha: 0.45)),
            onSelected: (selected) {
              if (selected) {
                onChanged(fuel);
              } else {
                onChanged(null);
              }
            },
          ),
      ],
    );
  }
}

class _MotorcycleModelLeading extends StatelessWidget {
  const _MotorcycleModelLeading({required this.side, required this.color});

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
            child: Icon(Icons.two_wheeler_outlined, color: color, size: 28),
          ),
        ),
      ),
    );
  }
}

class _MotorcycleValueLine extends StatelessWidget {
  const _MotorcycleValueLine({
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
