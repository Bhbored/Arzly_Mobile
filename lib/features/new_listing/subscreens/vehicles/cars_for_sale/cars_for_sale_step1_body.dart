import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/listing_owned/motors/vehicle_condition.dart';
import 'package:arzly/data/providers/new_listing/temp_listing_draft/temp_listing_draft_holder.dart';
import 'package:arzly/data/providers/new_listing/temp_vehicles_details/temp_vehicles_details_holder.dart';
import 'package:arzly/domain/entities/listing/vehicles_details/vehicles_details.dart';
import 'package:arzly/features/new_listing/shared/inputs/car_picker_search_decoration.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/pickers/car_brand_picker_page.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/pickers/car_model_picker_page.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/pickers/models/car_brand_selection.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/cars_for_sale/cars_for_sale_brand_avatar.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/cars_for_sale/cars_for_sale_kilometers_field.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/cars_for_sale/cars_for_sale_year_field.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/widgets/shared/vehicle_condition_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CarsForSaleStep1Body extends ConsumerStatefulWidget {
  const CarsForSaleStep1Body({
    super.key,
    required this.formKey,
    required this.requireStepFieldErrors,
  });

  final GlobalKey<FormState> formKey;
  final bool requireStepFieldErrors;

  @override
  ConsumerState<CarsForSaleStep1Body> createState() => _CarsForSaleStep1BodyState();
}

class _CarsForSaleStep1BodyState extends ConsumerState<CarsForSaleStep1Body> {
  late final TextEditingController _versionController;
  late final TextEditingController _yearController;
  late final TextEditingController _kilometersController;

  @override
  void initState() {
    super.initState();
    final veh = ref.read(tempVehiclesDetailsHolderProvider);
    _versionController = TextEditingController(text: veh.version ?? '');
    _yearController = TextEditingController(
      text: veh.year != null ? '${veh.year}' : '',
    );
    _kilometersController = TextEditingController(
      text: veh.kilometers != null ? '${veh.kilometers}' : '',
    );
    _versionController.addListener(() {
      ref.read(tempVehiclesDetailsHolderProvider.notifier).update(
            (d) => d.copyWith(version: _versionController.text.trim().isEmpty
                ? null
                : _versionController.text),
          );
    });
    _yearController.addListener(() {
      ref.read(tempVehiclesDetailsHolderProvider.notifier).update(
            (d) => d.copyWith(year: parseCarYear(_yearController.text)),
          );
    });
    _kilometersController.addListener(() {
      ref.read(tempVehiclesDetailsHolderProvider.notifier).update(
            (d) => d.copyWith(
              kilometers: parseCarKilometers(_kilometersController.text),
            ),
          );
    });
  }

  @override
  void dispose() {
    _versionController.dispose();
    _yearController.dispose();
    _kilometersController.dispose();
    super.dispose();
  }

  Future<void> _openBrandPicker() async {
    final picked = await Navigator.of(context).push<CarBrandSelection>(
      MaterialPageRoute(builder: (context) => const CarBrandPickerPage()),
    );
    if (picked != null && mounted) {
      ref.read(tempVehiclesDetailsHolderProvider.notifier).update(
            (_) => VehiclesDetails(
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
      _versionController.text = '';
      _yearController.text = '';
      _kilometersController.text = '';
    }
  }

  Future<void> _openModelPicker() async {
    final veh = ref.read(tempVehiclesDetailsHolderProvider);
    final brandName = veh.carBrand;
    if (brandName == null) return;
    final picked = await Navigator.of(context).push<String>(
      MaterialPageRoute(
        builder: (context) => CarModelPickerPage(brandName: brandName),
      ),
    );
    if (picked != null && mounted) {
      ref.read(tempVehiclesDetailsHolderProvider.notifier).update(
            (d) => d.copyWith(carModel: picked),
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

    final brandSelection = veh.carBrand == null
        ? null
        : CarBrandSelection(
            name: veh.carBrand!,
            logoUrl: veh.carBrandLogoUrl ?? '',
          );

    final brandError = widget.requireStepFieldErrors && veh.carBrand == null
        ? 'Choose a brand'
        : null;
    final modelError = widget.requireStepFieldErrors &&
            veh.carBrand != null &&
            veh.carModel == null
        ? 'Choose a model'
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
                  leading: CarsForSaleBrandAvatar(brand: brandSelection),
                  title: _CarsForSaleValueLine(
                    height: valueBlockHeight,
                    text: veh.carBrand ?? 'Choose brand',
                    isPlaceholder: veh.carBrand == null,
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
            if (veh.carBrand != null) ...[
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
                    leading: _CarsForSaleModelLeading(
                      side: leadingSide,
                      color: scheme.primary,
                    ),
                    title: _CarsForSaleValueLine(
                      height: valueBlockHeight,
                      text: veh.carModel ?? 'Choose model',
                      isPlaceholder: veh.carModel == null,
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
            SizedBox(height: context.spaceSmall),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Version',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: scheme.onSurface,
                  ),
                ),
                SizedBox(height: context.spaceSmall),
                TextField(
                  controller: _versionController,
                  maxLines: 1,
                  textInputAction: TextInputAction.done,
                  decoration: carForSaleVersionFieldDecoration(
                    context,
                    pageBg,
                    scheme,
                    hintText: 'Enter version',
                  ).copyWith(isDense: true),
                ),
              ],
            ),
            SizedBox(height: context.spaceSmall),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                          (d) {
                            if (v == null) {
                              return d.copyWith(condition: null);
                            }
                            return d.copyWith(
                              condition: v,
                              kilometers: v == VehicleCondition.new_
                                  ? null
                                  : d.kilometers,
                            );
                          },
                        );
                    if (v == VehicleCondition.new_) {
                      _kilometersController.text = '';
                    }
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
            SizedBox(height: context.spaceSmall),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
              ],
            ),
            if (veh.condition != VehicleCondition.new_) ...[
              SizedBox(height: context.spaceSmall),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kilometers',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: scheme.onSurface,
                    ),
                  ),
                  SizedBox(height: context.spaceSmall),
                  CarsForSaleKilometersField(
                    controller: _kilometersController,
                    pageBg: pageBg,
                    requiredField: veh.condition == VehicleCondition.used,
                  ),
                ],
              ),
            ],
          ],
        ),
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
