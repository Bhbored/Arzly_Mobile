import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/listing_owned/motors/truck_brand.dart';
import 'package:arzly/data/providers/new_listing/temp_listing_draft/temp_listing_draft_holder.dart';
import 'package:arzly/data/providers/new_listing/temp_vehicles_details/temp_vehicles_details_holder.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/cars_for_sale/cars_for_sale_brand_avatar.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/cars_for_sale/cars_for_sale_year_field.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/pickers/models/car_brand_selection.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/trucks_buses/truck_brand_picker_page.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/widgets/shared/vehicle_condition_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrucksBusesStep1Body extends ConsumerStatefulWidget {
  const TrucksBusesStep1Body({
    super.key,
    required this.formKey,
    required this.requireStepFieldErrors,
  });

  final GlobalKey<FormState> formKey;
  final bool requireStepFieldErrors;

  @override
  ConsumerState<TrucksBusesStep1Body> createState() => _TrucksBusesStep1BodyState();
}

class _TrucksBusesStep1BodyState extends ConsumerState<TrucksBusesStep1Body> {
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
    final picked = await Navigator.of(context).push<TruckBrand>(
      MaterialPageRoute(builder: (context) => const TruckBrandPickerPage()),
    );
    if (picked != null && mounted) {
      ref.read(tempVehiclesDetailsHolderProvider.notifier).update(
            (d) => d.copyWith(truckBrand: picked),
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

  @override
  Widget build(BuildContext context) {
    final veh = ref.watch(tempVehiclesDetailsHolderProvider);
    final scheme = Theme.of(context).colorScheme;
    final pageBg = scheme.surfaceContainerLowest;
    final valueBlockHeight = (context.screenHeight * 0.048).clamp(44.0, 56.0);
    final leadingSide = CarsForSaleBrandAvatar.leadingExtent(context);

    final brandSelection = veh.truckBrand == null
        ? null
        : CarBrandSelection(name: veh.truckBrand!.label, logoUrl: '');

    final brandError =
        widget.requireStepFieldErrors && veh.truckBrand == null
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
            _TrucksBusesBrandSection(
              pageBg: pageBg,
              scheme: scheme,
              leadingSide: leadingSide,
              valueBlockHeight: valueBlockHeight,
              brandSelection: brandSelection,
              truckBrand: veh.truckBrand,
              brandError: brandError,
              onOpenPicker: _openBrandPicker,
            ),
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
              requiredField: widget.requireStepFieldErrors,
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

class _TrucksBusesBrandSection extends StatelessWidget {
  const _TrucksBusesBrandSection({
    required this.pageBg,
    required this.scheme,
    required this.leadingSide,
    required this.valueBlockHeight,
    required this.brandSelection,
    required this.truckBrand,
    required this.brandError,
    required this.onOpenPicker,
  });

  final Color pageBg;
  final ColorScheme scheme;
  final double leadingSide;
  final double valueBlockHeight;
  final CarBrandSelection? brandSelection;
  final TruckBrand? truckBrand;
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
          leading: CarsForSaleBrandAvatar(
            brand: brandSelection,
            placeholderKind: CarsForSaleBrandAvatarPlaceholderKind.truck,
          ),
          title: _TrucksBusesValueLine(
            height: valueBlockHeight,
            text: truckBrand?.label ?? 'Choose brand',
            isPlaceholder: truckBrand == null,
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

class _TrucksBusesValueLine extends StatelessWidget {
  const _TrucksBusesValueLine({
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
