import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/job_listing/contact_method.dart';
import 'package:arzly/core/enums/listing_owned/motors/air_conditioning.dart';
import 'package:arzly/core/enums/listing_owned/motors/car_feature.dart';
import 'package:arzly/core/enums/listing_owned/motors/car_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/fuel_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/transmission_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/vehicle_color.dart';
import 'package:arzly/core/enums/listing_owned/motors/vehicle_interior.dart';
import 'package:arzly/domain/entities/pickup_location/pickup_location.dart';
import 'package:arzly/features/new_listing/shared/listing_form_section_divider.dart';
import 'package:arzly/features/new_listing/shared/listing_publishing_details_section.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/car_picker_search_decoration.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/widgets/cars_for_sale/cars_for_sale_extra_features_tile.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/widgets/cars_for_sale/cars_for_sale_fuel_consumption_field.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/widgets/cars_for_sale/cars_for_sale_horsepower_field.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/widgets/cars_for_sale/cars_for_sale_number_of_doors_field.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/widgets/cars_for_sale/cars_for_sale_number_of_owners_field.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/widgets/cars_for_sale/cars_for_sale_number_of_seats_field.dart';
import 'package:flutter/material.dart';

class CarsForSaleBodySecond extends StatelessWidget {
  const CarsForSaleBodySecond({
    super.key,
    required this.formKey,
    required this.fieldsResetKey,
    required this.selectedFuelType,
    required this.onFuelTypeChanged,
    required this.selectedTransmissionType,
    required this.onTransmissionTypeChanged,
    required this.selectedCarType,
    required this.onCarTypeChanged,
    required this.horsepowerController,
    required this.fuelConsumptionController,
    required this.selectedAirConditioning,
    required this.onAirConditioningChanged,
    required this.selectedVehicleColor,
    required this.onVehicleColorChanged,
    required this.numberOfSeatsController,
    required this.numberOfDoorsController,
    required this.numberOfSeatsFieldKey,
    required this.numberOfDoorsFieldKey,
    required this.showRequiredErrors,
    required this.selectedVehicleInterior,
    required this.onVehicleInteriorChanged,
    required this.selectedCarFeatures,
    required this.onChooseExtraFeatures,
    required this.numberOfOwnersController,
    required this.titleController,
    required this.descriptionController,
    required this.priceController,
    required this.nameController,
    required this.phoneController,
    required this.selectedPickupLocation,
    required this.onPickupLocationChanged,
    required this.selectedContactMethod,
    required this.onContactMethodChanged,
    required this.isSubmitting,
    required this.onPrevious,
    required this.onPostNow,
  });

  final GlobalKey<FormState> formKey;
  final Object? fieldsResetKey;
  final FuelType? selectedFuelType;
  final ValueChanged<FuelType?> onFuelTypeChanged;
  final TransmissionType? selectedTransmissionType;
  final ValueChanged<TransmissionType?> onTransmissionTypeChanged;
  final CarType? selectedCarType;
  final ValueChanged<CarType?> onCarTypeChanged;
  final TextEditingController horsepowerController;
  final TextEditingController fuelConsumptionController;
  final AirConditioning? selectedAirConditioning;
  final ValueChanged<AirConditioning?> onAirConditioningChanged;
  final VehicleColor? selectedVehicleColor;
  final ValueChanged<VehicleColor?> onVehicleColorChanged;
  final TextEditingController numberOfSeatsController;
  final TextEditingController numberOfDoorsController;
  final GlobalKey<FormFieldState<String>> numberOfSeatsFieldKey;
  final GlobalKey<FormFieldState<String>> numberOfDoorsFieldKey;
  final bool showRequiredErrors;
  final VehicleInterior? selectedVehicleInterior;
  final ValueChanged<VehicleInterior?> onVehicleInteriorChanged;
  final List<CarFeature> selectedCarFeatures;
  final VoidCallback onChooseExtraFeatures;
  final TextEditingController numberOfOwnersController;
  final TextEditingController titleController;
  final TextEditingController descriptionController;
  final TextEditingController priceController;
  final TextEditingController nameController;
  final TextEditingController phoneController;
  final PickupLocation? selectedPickupLocation;
  final ValueChanged<PickupLocation?> onPickupLocationChanged;
  final ContactMethod? selectedContactMethod;
  final ValueChanged<ContactMethod?> onContactMethodChanged;
  final bool isSubmitting;
  final VoidCallback onPrevious;
  final VoidCallback onPostNow;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final pageBg = scheme.surfaceContainerLowest;
    final menuRadius = BorderRadius.circular(context.borderRadiusMedium);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.paddingMedium),
      child: Stack(
        alignment: Alignment.center,
        children: [
          SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            physics: isSubmitting
                ? const NeverScrollableScrollPhysics()
                : const AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.only(
              bottom: context.spaceMedium + context.viewInsets.bottom,
            ),
            child: Form(
              key: formKey,
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
                  _CarsForSaleDropdownField<FuelType>(
                    fieldsResetKey: fieldsResetKey,
                    fieldSuffix: 'fuel',
                    value: selectedFuelType,
                    onChanged: onFuelTypeChanged,
                    hintText: 'Choose fuel type',
                    validationMessage: 'Choose fuel type',
                    showRequiredErrors: showRequiredErrors,
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
                  _CarsForSaleDropdownField<TransmissionType>(
                    fieldsResetKey: fieldsResetKey,
                    fieldSuffix: 'transmission',
                    value: selectedTransmissionType,
                    onChanged: onTransmissionTypeChanged,
                    hintText: 'Choose transmission',
                    validationMessage: 'Choose transmission',
                    showRequiredErrors: showRequiredErrors,
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
                  _CarsForSaleDropdownField<CarType>(
                    fieldsResetKey: fieldsResetKey,
                    fieldSuffix: 'car_type',
                    value: selectedCarType,
                    onChanged: onCarTypeChanged,
                    hintText: 'Choose car type',
                    validationMessage: 'Choose car type',
                    showRequiredErrors: showRequiredErrors,
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
                    controller: horsepowerController,
                    pageBg: pageBg,
                    requiredField: showRequiredErrors,
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
                    controller: fuelConsumptionController,
                    pageBg: pageBg,
                    requiredField: showRequiredErrors,
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
                  _CarsForSaleDropdownField<AirConditioning>(
                    fieldsResetKey: fieldsResetKey,
                    fieldSuffix: 'air_conditioning',
                    value: selectedAirConditioning,
                    onChanged: onAirConditioningChanged,
                    hintText: 'Choose air conditioning',
                    validationMessage: 'Choose air conditioning',
                    showRequiredErrors: showRequiredErrors,
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
                    value: selectedVehicleColor,
                    onChanged: onVehicleColorChanged,
                    showRequiredErrors: showRequiredErrors,
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
                    fieldKey: numberOfSeatsFieldKey,
                    controller: numberOfSeatsController,
                    pageBg: pageBg,
                    carType: selectedCarType,
                    requiredField: showRequiredErrors,
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
                    fieldKey: numberOfDoorsFieldKey,
                    controller: numberOfDoorsController,
                    pageBg: pageBg,
                    carType: selectedCarType,
                    requiredField: showRequiredErrors,
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
                  _CarsForSaleDropdownField<VehicleInterior>(
                    fieldsResetKey: fieldsResetKey,
                    fieldSuffix: 'vehicle_interior',
                    value: selectedVehicleInterior,
                    onChanged: onVehicleInteriorChanged,
                    hintText: 'Choose interior',
                    validationMessage: 'Choose interior',
                    showRequiredErrors: showRequiredErrors,
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
                    selectedFeatures: selectedCarFeatures,
                    pageBg: pageBg,
                    onTap: onChooseExtraFeatures,
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
                    controller: numberOfOwnersController,
                    pageBg: pageBg,
                    requiredField: showRequiredErrors,
                  ),
                ],
              ),
              SizedBox(height: context.spaceSmall),
              ListingPublishingDetailsSection(
                fieldsResetKey: fieldsResetKey,
                titleController: titleController,
                descriptionController: descriptionController,
                priceController: priceController,
                nameController: nameController,
                phoneController: phoneController,
                selectedPickupLocation: selectedPickupLocation,
                onPickupLocationChanged: onPickupLocationChanged,
                selectedContactMethod: selectedContactMethod,
                onContactMethodChanged: onContactMethodChanged,
                showRequiredErrors: showRequiredErrors,
                pageBg: pageBg,
              ),
              SizedBox(height: context.spaceSmall),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  OutlinedButton(
                    onPressed: isSubmitting ? null : onPrevious,
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
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(width: context.paddingMedium * 1.15),
                  FilledButton(
                    onPressed: isSubmitting ? null : onPostNow,
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
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
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
          if (isSubmitting)
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

class _CarsForSaleDropdownField<T extends Object> extends StatelessWidget {
  const _CarsForSaleDropdownField({
    required this.fieldsResetKey,
    required this.fieldSuffix,
    required this.value,
    required this.onChanged,
    required this.hintText,
    required this.validationMessage,
    required this.showRequiredErrors,
    required this.pageBg,
    required this.scheme,
    required this.menuRadius,
    required this.items,
    this.validator,
  });

  final Object? fieldsResetKey;
  final String fieldSuffix;
  final T? value;
  final ValueChanged<T?> onChanged;
  final String hintText;
  final String validationMessage;
  final bool showRequiredErrors;
  final String? Function(T?)? validator;
  final Color pageBg;
  final ColorScheme scheme;
  final BorderRadius menuRadius;
  final List<DropdownMenuItem<T>> items;

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

    return FormField<T>(
      key: ValueKey(Object.hash(fieldsResetKey, fieldSuffix)),
      initialValue: value,
      autovalidateMode: showRequiredErrors
          ? AutovalidateMode.onUserInteraction
          : AutovalidateMode.disabled,
      validator:
          validator ??
          (v) => v == null && showRequiredErrors ? validationMessage : null,
      builder: (state) {
        final baseDecoration = carForSaleVersionFieldDecoration(
          context,
          pageBg,
          scheme,
          hintText: hintText,
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
              final itemCount = items.length;
              return DropdownButtonHideUnderline(
                child: DropdownButton<T>(
                  padding: EdgeInsets.zero,
                  isExpanded: true,
                  borderRadius: menuRadius,
                  menuWidth: constraints.maxWidth,
                  itemHeight: kMinInteractiveDimension,
                  menuMaxHeight: context.carsForSaleDropdownMenuMaxHeight(
                    itemCount: itemCount,
                  ),
                  dropdownColor: scheme.surfaceContainerHigh,
                  elevation: 4,
                  alignment: AlignmentDirectional.bottomStart,
                  style: valueStyle,
                  hint: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(hintText, style: hintStyle),
                  ),
                  value: state.value,
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: scheme.onSurfaceVariant,
                    size: 22,
                  ),
                  items: items,
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
