import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/listing_owned/motors/air_conditioning.dart';
import 'package:arzly/core/enums/listing_owned/motors/car_feature.dart';
import 'package:arzly/core/enums/listing_owned/motors/car_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/fuel_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/transmission_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/vehicle_color.dart';
import 'package:arzly/core/enums/listing_owned/motors/vehicle_interior.dart';
import 'package:arzly/data/providers/new_listing/temp_vehicles_details/temp_vehicles_details_holder.dart';
import 'package:arzly/features/new_listing/shared/form/listing_form_section_divider.dart';
import 'package:arzly/features/new_listing/shared/publishing/listing_publishing_details_section.dart';
import 'package:arzly/features/new_listing/shared/inputs/car_picker_search_decoration.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/cars_for_sale/cars_for_sale_extra_features_tile.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/cars_for_sale/cars_for_sale_fuel_consumption_field.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/cars_for_sale/cars_for_sale_horsepower_field.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/cars_for_sale/cars_for_sale_number_of_doors_field.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/cars_for_sale/cars_for_sale_number_of_owners_field.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/cars_for_sale/cars_for_sale_number_of_seats_field.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/shared/cars_for_sale_style_dropdown_field.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/pickers/extra_features_selector_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CarsForSaleStep2Body extends ConsumerStatefulWidget {
  const CarsForSaleStep2Body({
    super.key,
    required this.formKey,
    required this.showRequiredErrors,
    required this.isSubmitting,
    required this.onPrevious,
    required this.onPostNow,
    required this.numberOfSeatsFieldKey,
    required this.numberOfDoorsFieldKey,
    this.premadeTitle,
  });

  final GlobalKey<FormState> formKey;
  final bool showRequiredErrors;
  final bool isSubmitting;
  final VoidCallback onPrevious;
  final VoidCallback onPostNow;
  final GlobalKey<FormFieldState<String>> numberOfSeatsFieldKey;
  final GlobalKey<FormFieldState<String>> numberOfDoorsFieldKey;
  final String? premadeTitle;

  @override
  ConsumerState<CarsForSaleStep2Body> createState() =>
      _CarsForSaleStep2BodyState();
}

class _CarsForSaleStep2BodyState extends ConsumerState<CarsForSaleStep2Body> {
  late final TextEditingController _horsepowerController;
  late final TextEditingController _fuelConsumptionController;
  late final TextEditingController _numberOfSeatsController;
  late final TextEditingController _numberOfDoorsController;
  late final TextEditingController _numberOfOwnersController;

  @override
  void initState() {
    super.initState();
    final veh = ref.read(tempVehiclesDetailsHolderProvider);
    _horsepowerController = TextEditingController(
      text: veh.horsepower != null ? '${veh.horsepower}' : '',
    );
    _fuelConsumptionController = TextEditingController(
      text: veh.fuelConsumption != null ? '${veh.fuelConsumption}' : '',
    );
    _numberOfSeatsController = TextEditingController(
      text: veh.numberOfSeats != null ? '${veh.numberOfSeats}' : '',
    );
    _numberOfDoorsController = TextEditingController(
      text: veh.numberOfDoors != null ? '${veh.numberOfDoors}' : '',
    );
    _numberOfOwnersController = TextEditingController(
      text: veh.numberOfOwners != null ? '${veh.numberOfOwners}' : '',
    );
    _horsepowerController.addListener(() {
      ref.read(tempVehiclesDetailsHolderProvider.notifier).update(
            (d) => d.copyWith(
              horsepower: parseCarHorsepower(_horsepowerController.text),
            ),
          );
    });
    _fuelConsumptionController.addListener(() {
      ref.read(tempVehiclesDetailsHolderProvider.notifier).update(
            (d) => d.copyWith(
              fuelConsumption:
                  parseCarFuelConsumption(_fuelConsumptionController.text),
            ),
          );
    });
    _numberOfSeatsController.addListener(() {
      ref.read(tempVehiclesDetailsHolderProvider.notifier).update(
            (d) => d.copyWith(
              numberOfSeats: parseCarNumberOfSeats(
                _numberOfSeatsController.text,
                carType: d.carType,
              ),
            ),
          );
    });
    _numberOfDoorsController.addListener(() {
      ref.read(tempVehiclesDetailsHolderProvider.notifier).update(
            (d) => d.copyWith(
              numberOfDoors: parseCarNumberOfDoors(
                _numberOfDoorsController.text,
                carType: d.carType,
              ),
            ),
          );
    });
    _numberOfOwnersController.addListener(() {
      ref.read(tempVehiclesDetailsHolderProvider.notifier).update(
            (d) => d.copyWith(
              numberOfOwners:
                  parseCarNumberOfOwners(_numberOfOwnersController.text),
            ),
          );
    });
  }

  @override
  void dispose() {
    _horsepowerController.dispose();
    _fuelConsumptionController.dispose();
    _numberOfSeatsController.dispose();
    _numberOfDoorsController.dispose();
    _numberOfOwnersController.dispose();
    super.dispose();
  }

  Future<void> _openExtraFeaturesSelector() async {
    final current = ref.read(tempVehiclesDetailsHolderProvider).carFeatures;
    final picked = await Navigator.of(context).push<List<CarFeature>>(
      createExtraFeaturesSelectorRoute(
        initialSelection: List<CarFeature>.from(current ?? const []),
      ),
    );
    if (picked != null && mounted) {
      ref.read(tempVehiclesDetailsHolderProvider.notifier).update(
            (d) => d.copyWith(
              carFeatures: picked.isEmpty ? null : picked,
            ),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    final veh = ref.watch(tempVehiclesDetailsHolderProvider);
    final scheme = Theme.of(context).colorScheme;
    final pageBg = scheme.surfaceContainerLowest;
    final menuRadius = BorderRadius.circular(context.borderRadiusMedium);
    final fieldsResetKey = veh.carBrand;
    final selectedFeatures =
        List<CarFeature>.from(veh.carFeatures ?? const []);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.paddingMedium),
      child: Stack(
        alignment: Alignment.center,
        children: [
          SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            physics: widget.isSubmitting
                ? const NeverScrollableScrollPhysics()
                : const AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.only(
              bottom: context.spaceMedium + context.viewInsets.bottom,
            ),
            child: Form(
              key: widget.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Fuel type',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: scheme.onSurface,
                            ),
                      ),
                      SizedBox(height: context.spaceSmall),
                      CarsForSaleStyleDropdownField<FuelType>(
                        fieldsResetKey: fieldsResetKey,
                        fieldSuffix: 'fuel',
                        value: veh.fuelType,
                        onChanged: (v) => ref
                            .read(tempVehiclesDetailsHolderProvider.notifier)
                            .update((d) => d.copyWith(fuelType: v)),
                        hintText: 'Choose fuel type',
                        validationMessage: 'Choose fuel type',
                        showRequiredErrors: widget.showRequiredErrors,
                        pageBg: pageBg,
                        scheme: scheme,
                        menuRadius: menuRadius,
                        items: [
                          for (final t in FuelType.values)
                            DropdownMenuItem(value: t, child: Text(t.label)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: context.spaceSmall),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Transmission',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: scheme.onSurface,
                            ),
                      ),
                      SizedBox(height: context.spaceSmall),
                      CarsForSaleStyleDropdownField<TransmissionType>(
                        fieldsResetKey: fieldsResetKey,
                        fieldSuffix: 'transmission',
                        value: veh.transmissionType,
                        onChanged: (v) => ref
                            .read(tempVehiclesDetailsHolderProvider.notifier)
                            .update((d) => d.copyWith(transmissionType: v)),
                        hintText: 'Choose transmission',
                        validationMessage: 'Choose transmission',
                        showRequiredErrors: widget.showRequiredErrors,
                        pageBg: pageBg,
                        scheme: scheme,
                        menuRadius: menuRadius,
                        items: [
                          for (final t in TransmissionType.values)
                            DropdownMenuItem(value: t, child: Text(t.label)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: context.spaceSmall),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Car type',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: scheme.onSurface,
                            ),
                      ),
                      SizedBox(height: context.spaceSmall),
                      CarsForSaleStyleDropdownField<CarType>(
                        fieldsResetKey: fieldsResetKey,
                        fieldSuffix: 'car_type',
                        value: veh.carType,
                        onChanged: (v) {
                          ref
                              .read(
                                tempVehiclesDetailsHolderProvider.notifier,
                              )
                              .update((d) => d.copyWith(carType: v));
                          WidgetsBinding.instance.addPostFrameCallback((_) {
                            if (_numberOfSeatsController.text
                                .trim()
                                .isNotEmpty) {
                              widget.numberOfSeatsFieldKey.currentState
                                  ?.validate();
                            }
                            if (_numberOfDoorsController.text
                                .trim()
                                .isNotEmpty) {
                              widget.numberOfDoorsFieldKey.currentState
                                  ?.validate();
                            }
                          });
                        },
                        hintText: 'Choose car type',
                        validationMessage: 'Choose car type',
                        showRequiredErrors: widget.showRequiredErrors,
                        pageBg: pageBg,
                        scheme: scheme,
                        menuRadius: menuRadius,
                        items: [
                          for (final t in CarType.values)
                            DropdownMenuItem(value: t, child: Text(t.label)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: context.spaceSmall),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Per [hp]',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: scheme.onSurface,
                            ),
                      ),
                      SizedBox(height: context.spaceSmall),
                      CarsForSaleHorsepowerField(
                        controller: _horsepowerController,
                        pageBg: pageBg,
                        requiredField: widget.showRequiredErrors,
                      ),
                    ],
                  ),
                  SizedBox(height: context.spaceSmall),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Consumption [L/100km]',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: scheme.onSurface,
                            ),
                      ),
                      SizedBox(height: context.spaceSmall),
                      CarsForSaleFuelConsumptionField(
                        controller: _fuelConsumptionController,
                        pageBg: pageBg,
                        requiredField: widget.showRequiredErrors,
                      ),
                    ],
                  ),
                  const ListingFormSectionDivider(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Air Conditioning',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: scheme.onSurface,
                            ),
                      ),
                      SizedBox(height: context.spaceSmall),
                      CarsForSaleStyleDropdownField<AirConditioning>(
                        fieldsResetKey: fieldsResetKey,
                        fieldSuffix: 'air_conditioning',
                        value: veh.airConditioning,
                        onChanged: (v) => ref
                            .read(tempVehiclesDetailsHolderProvider.notifier)
                            .update((d) => d.copyWith(airConditioning: v)),
                        hintText: 'Choose air conditioning',
                        validationMessage: 'Choose air conditioning',
                        showRequiredErrors: widget.showRequiredErrors,
                        pageBg: pageBg,
                        scheme: scheme,
                        menuRadius: menuRadius,
                        items: [
                          for (final t in AirConditioning.values)
                            DropdownMenuItem(value: t, child: Text(t.label)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: context.spaceSmall),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Color',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: scheme.onSurface,
                            ),
                      ),
                      SizedBox(height: context.spaceSmall),
                      _CarsForSaleVehicleColorDropdownField(
                        fieldsResetKey: fieldsResetKey,
                        value: veh.vehicleColor,
                        onChanged: (v) => ref
                            .read(tempVehiclesDetailsHolderProvider.notifier)
                            .update((d) => d.copyWith(vehicleColor: v)),
                        showRequiredErrors: widget.showRequiredErrors,
                        pageBg: pageBg,
                        scheme: scheme,
                        menuRadius: menuRadius,
                      ),
                    ],
                  ),
                  SizedBox(height: context.spaceSmall),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Number of seats',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: scheme.onSurface,
                            ),
                      ),
                      SizedBox(height: context.spaceSmall),
                      CarsForSaleNumberOfSeatsField(
                        fieldKey: widget.numberOfSeatsFieldKey,
                        controller: _numberOfSeatsController,
                        pageBg: pageBg,
                        carType: veh.carType,
                        requiredField: widget.showRequiredErrors,
                      ),
                    ],
                  ),
                  SizedBox(height: context.spaceSmall),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Number of doors',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: scheme.onSurface,
                            ),
                      ),
                      SizedBox(height: context.spaceSmall),
                      CarsForSaleNumberOfDoorsField(
                        fieldKey: widget.numberOfDoorsFieldKey,
                        controller: _numberOfDoorsController,
                        pageBg: pageBg,
                        carType: veh.carType,
                        requiredField: widget.showRequiredErrors,
                      ),
                    ],
                  ),
                  SizedBox(height: context.spaceSmall),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Interior',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: scheme.onSurface,
                            ),
                      ),
                      SizedBox(height: context.spaceSmall),
                      CarsForSaleStyleDropdownField<VehicleInterior>(
                        fieldsResetKey: fieldsResetKey,
                        fieldSuffix: 'vehicle_interior',
                        value: veh.vehicleInterior,
                        onChanged: (v) => ref
                            .read(tempVehiclesDetailsHolderProvider.notifier)
                            .update((d) => d.copyWith(vehicleInterior: v)),
                        hintText: 'Choose interior',
                        validationMessage: 'Choose interior',
                        showRequiredErrors: widget.showRequiredErrors,
                        pageBg: pageBg,
                        scheme: scheme,
                        menuRadius: menuRadius,
                        items: [
                          for (final interior in VehicleInterior.values)
                            DropdownMenuItem(
                              value: interior,
                              child: Text(interior.label),
                            ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: context.spaceSmall),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Extra features',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: scheme.onSurface,
                            ),
                      ),
                      SizedBox(height: context.spaceSmall),
                      CarsForSaleExtraFeaturesTile(
                        selectedFeatures: selectedFeatures,
                        pageBg: pageBg,
                        onTap: _openExtraFeaturesSelector,
                      ),
                    ],
                  ),
                  const ListingFormSectionDivider(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Number of owners',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: scheme.onSurface,
                            ),
                      ),
                      SizedBox(height: context.spaceSmall),
                      CarsForSaleNumberOfOwnersField(
                        controller: _numberOfOwnersController,
                        pageBg: pageBg,
                        requiredField: widget.showRequiredErrors,
                      ),
                    ],
                  ),
                  SizedBox(height: context.spaceSmall),
                  ListingPublishingDetailsSection(
                    pageBg: pageBg,
                    showRequiredErrors: widget.showRequiredErrors,
                    premadeTitle: widget.premadeTitle,
                  ),
                  SizedBox(height: context.spaceSmall),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      OutlinedButton(
                        onPressed: widget.isSubmitting ? null : widget.onPrevious,
                        style: OutlinedButton.styleFrom(
                          minimumSize: Size(
                            context.screenWidth * 0.35,
                            context.screenHeight * 0.05,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: context.paddingMedium * 1.02,
                            vertical: context.spaceSmall,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          side: BorderSide(
                            color: scheme.outline.withValues(alpha: 0.85),
                          ),
                          foregroundColor: scheme.onSurface,
                        ),
                        child: Text(
                          'Previous',
                          style:
                              Theme.of(context).textTheme.labelLarge?.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                        ),
                      ),
                      SizedBox(width: context.paddingMedium * 1.15),
                      FilledButton(
                        onPressed:
                            widget.isSubmitting ? null : widget.onPostNow,
                        style: FilledButton.styleFrom(
                          minimumSize: Size(
                            context.screenWidth * 0.35,
                            context.screenHeight * 0.05,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: context.paddingMedium * 1.02,
                            vertical: context.spaceSmall,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          elevation: 0,
                        ),
                        child: Text(
                          'Post now',
                          style:
                              Theme.of(context).textTheme.labelLarge?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: scheme.onPrimary,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          if (widget.isSubmitting)
            Positioned.fill(
              child: ColoredBox(
                color: scheme.surface.withValues(alpha: 0.55),
                child: Center(
                  child: SizedBox(
                    width: 36,
                    height: 36,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.5,
                      color: scheme.primary,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _CarsForSaleVehicleColorSwatch extends StatelessWidget {
  const _CarsForSaleVehicleColorSwatch({
    required this.color,
    required this.borderColor,
  });

  final Color color;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.paddingMedium,
      height: context.paddingMedium,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: Border.all(color: borderColor),
      ),
    );
  }
}

class _CarsForSaleVehicleColorOption extends StatelessWidget {
  const _CarsForSaleVehicleColorOption({
    required this.vehicleColor,
    required this.scheme,
    required this.textStyle,
  });

  final VehicleColor vehicleColor;
  final ColorScheme scheme;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _CarsForSaleVehicleColorSwatch(
          color: vehicleColor.color,
          borderColor: scheme.outline.withValues(alpha: 0.55),
        ),
        SizedBox(width: context.paddingSmall),
        Expanded(
          child: Text(
            vehicleColor.label,
            style: textStyle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}

class _CarsForSaleVehicleColorDropdownField extends StatelessWidget {
  const _CarsForSaleVehicleColorDropdownField({
    required this.fieldsResetKey,
    required this.value,
    required this.onChanged,
    required this.showRequiredErrors,
    required this.pageBg,
    required this.scheme,
    required this.menuRadius,
  });

  final Object? fieldsResetKey;
  final VehicleColor? value;
  final ValueChanged<VehicleColor?> onChanged;
  final bool showRequiredErrors;
  final Color pageBg;
  final ColorScheme scheme;
  final BorderRadius menuRadius;

  @override
  Widget build(BuildContext context) {
    final hintStyle = Theme.of(context).textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.w500,
          color: scheme.onSurfaceVariant,
          height: 1.2,
        );
    final valueStyle = Theme.of(context).textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.w600,
          color: scheme.onSurface,
          height: 1.2,
        );

    return FormField<VehicleColor>(
      key: ValueKey(Object.hash(fieldsResetKey, 'vehicle_color')),
      initialValue: value,
      autovalidateMode: showRequiredErrors
          ? AutovalidateMode.onUserInteraction
          : AutovalidateMode.disabled,
      validator: (v) =>
          v == null && showRequiredErrors ? 'Choose color' : null,
      builder: (state) {
        final baseDecoration = carForSaleVersionFieldDecoration(
          context,
          pageBg,
          scheme,
          hintText: 'Choose color',
        );
        return InputDecorator(
          decoration: baseDecoration.copyWith(
            hintText: null,
            errorText: state.hasError ? state.errorText : null,
            isDense: true,
            contentPadding: EdgeInsets.symmetric(
              horizontal: context.paddingMedium,
              vertical: context.spaceSmall * 0.40,
            ),
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final itemCount = VehicleColor.values.length;
              const itemHeight = 52.0;
              return DropdownButtonHideUnderline(
                child: DropdownButton<VehicleColor>(
                  padding: EdgeInsets.zero,
                  isExpanded: true,
                  borderRadius: menuRadius,
                  menuWidth: constraints.maxWidth,
                  itemHeight: itemHeight,
                  menuMaxHeight: context.carsForSaleDropdownMenuMaxHeight(
                    itemCount: itemCount,
                    itemHeight: itemHeight,
                  ),
                  dropdownColor: scheme.surfaceContainerHigh,
                  elevation: 4,
                  alignment: AlignmentDirectional.bottomStart,
                  hint: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text('Choose color', style: hintStyle),
                  ),
                  value: state.value,
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: scheme.onSurfaceVariant,
                    size: 22,
                  ),
                  selectedItemBuilder: (context) => [
                    for (final color in VehicleColor.values)
                      _CarsForSaleVehicleColorOption(
                        vehicleColor: color,
                        scheme: scheme,
                        textStyle: valueStyle,
                      ),
                  ],
                  items: [
                    for (final color in VehicleColor.values)
                      DropdownMenuItem(
                        value: color,
                        child: _CarsForSaleVehicleColorOption(
                          vehicleColor: color,
                          scheme: scheme,
                          textStyle: valueStyle,
                        ),
                      ),
                  ],
                  onChanged: (v) {
                    state.didChange(v);
                    onChanged(v);
                  },
                ),
              );
            },
          ),
        );
      },
    );
  }
}
