import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/exceptions/api_exception.dart';
import 'package:arzly/data/providers/listings/listing_provider.dart';
import 'package:arzly/core/enums/job_listing/contact_method.dart';
import 'package:arzly/core/enums/listing/listing_status.dart';
import 'package:arzly/core/enums/listing_owned/motors/air_conditioning.dart';
import 'package:arzly/core/enums/listing_owned/motors/car_feature.dart';
import 'package:arzly/core/enums/listing_owned/motors/car_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/fuel_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/transmission_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/vehicle_color.dart';
import 'package:arzly/core/enums/listing_owned/motors/vehicle_condition.dart';
import 'package:arzly/core/enums/listing_owned/motors/vehicle_interior.dart';
import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/listing/listing.dart';
import 'package:arzly/domain/entities/listing/vehicles_details/vehicles_details.dart';
import 'package:arzly/domain/entities/pickup_location/pickup_location.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';
import 'package:arzly/features/new_listing/shared/listing_images_section.dart';
import 'package:arzly/features/new_listing/shared/listing_publishing_details_section.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/car_brand_picker_page.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/extra_features_selector_page.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/car_model_picker_page.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/models/car_brand_selection.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/widgets/cars_for_sale/cars_for_sale_body_second.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/widgets/cars_for_sale/cars_for_sale_fuel_consumption_field.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/widgets/cars_for_sale/cars_for_sale_horsepower_field.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/widgets/cars_for_sale/cars_for_sale_kilometers_field.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/widgets/cars_for_sale/cars_for_sale_number_of_doors_field.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/widgets/cars_for_sale/cars_for_sale_number_of_owners_field.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/widgets/cars_for_sale/cars_for_sale_number_of_seats_field.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/widgets/cars_for_sale/cars_for_sale_listing_body.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/widgets/cars_for_sale/cars_for_sale_year_field.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/widgets/vehicles_subcategory_body.dart';
import 'package:arzly/features/shared/snack_bar/app_snack_bar.dart';
import 'package:arzly/features/shared/snack_bar/app_snack_bar_variant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VehiclesNewListingSubscreen extends ConsumerStatefulWidget {
  const VehiclesNewListingSubscreen({
    super.key,
    required this.category,
    required this.subcategory,
    this.carForSaleStepNotifier,
    this.defaultContactName,
    this.defaultContactPhone,
  });

  final Category category;
  final SubCategory subcategory;
  final ValueNotifier<int>? carForSaleStepNotifier;
  final String? defaultContactName;
  final int? defaultContactPhone;

  @override
  ConsumerState<VehiclesNewListingSubscreen> createState() =>
      _VehiclesNewListingSubscreenState();
}

class _VehiclesNewListingSubscreenState
    extends ConsumerState<VehiclesNewListingSubscreen> {
  final TextEditingController _carVersionController = TextEditingController();
  final TextEditingController _kilometersController = TextEditingController();
  final TextEditingController _yearController = TextEditingController();
  final TextEditingController _horsepowerController = TextEditingController();
  final TextEditingController _fuelConsumptionController =
      TextEditingController();
  final TextEditingController _numberOfSeatsController =
      TextEditingController();
  final TextEditingController _numberOfDoorsController =
      TextEditingController();
  final TextEditingController _numberOfOwnersController =
      TextEditingController();
  final TextEditingController _adTitleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final GlobalKey<FormState> _carsForSaleFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _carsForSaleStep2FormKey = GlobalKey<FormState>();
  final GlobalKey<FormFieldState<String>> _numberOfSeatsFieldKey =
      GlobalKey<FormFieldState<String>>();
  final GlobalKey<FormFieldState<String>> _numberOfDoorsFieldKey =
      GlobalKey<FormFieldState<String>>();
  late final PageController _carForSalePageController;

  CarBrandSelection? _selectedCarBrand;
  String? _selectedCarModel;
  VehicleCondition? _carCondition;
  FuelType? _fuelType;
  TransmissionType? _transmissionType;
  CarType? _carType;
  AirConditioning? _airConditioning;
  VehicleColor? _vehicleColor;
  VehicleInterior? _vehicleInterior;
  List<CarFeature> _selectedCarFeatures = [];
  PickupLocation? _selectedPickupLocation;
  ContactMethod? _contactMethod = ContactMethod.phoneNumber;
  bool _step2ShowRequiredErrors = false;
  bool _isSubmittingListing = false;
  String _lastSuggestedAdTitle = '';
  bool _seededContactName = false;
  bool _seededContactPhone = false;

  String? _step1BrandError;
  String? _step1ModelError;
  String? _step1ConditionError;

  bool get _isCarsForSale =>
      widget.subcategory.name.trim() == VehiclesSubcategoryBody.carsForSale;

  CarBrandSelection? get selectedCarBrand => _selectedCarBrand;

  String? get selectedCarModel => _selectedCarModel;

  @override
  void initState() {
    super.initState();
    _carForSalePageController = PageController();
    _applyContactDefaults(
      name: widget.defaultContactName,
      phone: widget.defaultContactPhone,
    );
  }

  @override
  void dispose() {
    _carForSalePageController.dispose();
    _carVersionController.dispose();
    _kilometersController.dispose();
    _yearController.dispose();
    _horsepowerController.dispose();
    _fuelConsumptionController.dispose();
    _numberOfSeatsController.dispose();
    _numberOfDoorsController.dispose();
    _numberOfOwnersController.dispose();
    _adTitleController.dispose();
    _descriptionController.dispose();
    _priceController.dispose();
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  String? get _suggestedAdTitle {
    final year = parseCarYear(_yearController.text);
    final parts = <String>[
      ?_selectedCarBrand?.name,
      ?_selectedCarModel,
      ?year?.toString(),
    ];
    if (parts.isEmpty) return null;
    return parts.join(' ');
  }

  void _applySuggestedAdTitle() {
    final suggestion = _suggestedAdTitle;
    if (suggestion == null || suggestion.isEmpty) return;
    final current = _adTitleController.text.trim();
    if (current.isEmpty || current == _lastSuggestedAdTitle) {
      _adTitleController.text = suggestion;
    }
    _lastSuggestedAdTitle = suggestion;
  }

  void _applyContactDefaults({String? name, int? phone}) {
    if (!_seededContactName && name != null && _nameController.text.isEmpty) {
      _nameController.text = name;
      _seededContactName = true;
    }
    if (!_seededContactPhone &&
        phone != null &&
        _phoneController.text.isEmpty) {
      _phoneController.text = phone.toString();
      _seededContactPhone = true;
    }
  }

  Listing buildListingFromForm() {
    final category = widget.category;
    final subcategory = widget.subcategory;

    final versionText = _carVersionController.text.trim();
    final kilometers = _carCondition == VehicleCondition.new_
        ? null
        : parseCarKilometers(_kilometersController.text);
    final year = parseCarYear(_yearController.text);
    final horsepower = parseCarHorsepower(_horsepowerController.text);
    final fuelConsumption = parseCarFuelConsumption(
      _fuelConsumptionController.text,
    );
    final numberOfSeats = parseCarNumberOfSeats(
      _numberOfSeatsController.text,
      carType: _carType,
    );
    final numberOfDoors = parseCarNumberOfDoors(
      _numberOfDoorsController.text,
      carType: _carType,
    );
    final numberOfOwners = parseCarNumberOfOwners(
      _numberOfOwnersController.text,
    );
    final vehiclesDetails = VehiclesDetails(
      carBrand: _selectedCarBrand?.name,
      carModel: _selectedCarModel,
      version: versionText.isEmpty ? null : versionText,
      condition: _carCondition,
      year: year,
      kilometers: kilometers,
      fuelType: _fuelType,
      transmissionType: _transmissionType,
      carType: _carType,
      horsepower: horsepower,
      fuelConsumption: fuelConsumption,
      airConditioning: _airConditioning,
      vehicleColor: _vehicleColor,
      numberOfSeats: numberOfSeats,
      numberOfDoors: numberOfDoors,
      vehicleInterior: _vehicleInterior,
      numberOfOwners: numberOfOwners,
      carFeatures: _selectedCarFeatures.isEmpty ? null : _selectedCarFeatures,
    );

    final title = _adTitleController.text.trim();
    final description = _descriptionController.text.trim();
    final price = parseListingPrice(_priceController.text) ?? 0;
    final name = _nameController.text.trim();
    final phoneNumber = _phoneController.text.trim();
    final pickupLocation = _selectedPickupLocation;
    final contactMethod = _contactMethod ?? ContactMethod.phoneNumber;

    final now = DateTime.now();

    return Listing(
      id: '',
      title: title,
      description: description,
      price: price,
      status: ListingStatus.pending,
      primaryImageUrl: '',
      imagesUrl: <String>[],
      createdAt: now,
      name: name,
      phoneNumber: phoneNumber,
      contactMethod: contactMethod,
      ownerId: '',
      categoryId: category.id,
      subcategoryId: subcategory.id,
      pickupLocationId: pickupLocation?.id ?? '',
      pickupLocation: pickupLocation!,
      listingDetails: vehiclesDetails,
    );
  }

  void _tryAdvanceCarForSaleStep1() {
    setState(() {
      _step1BrandError = _selectedCarBrand == null ? 'Choose a brand' : null;
      _step1ModelError = _selectedCarBrand != null && _selectedCarModel == null
          ? 'Choose a model'
          : null;
      _step1ConditionError = _carCondition == null ? 'Choose condition' : null;
    });
    final pickersOk =
        _step1BrandError == null &&
        _step1ModelError == null &&
        _step1ConditionError == null;
    final formOk = _carsForSaleFormKey.currentState?.validate() ?? false;
    if (!pickersOk || !formOk) return;
    _applySuggestedAdTitle();
    _applyContactDefaults(
      name: widget.defaultContactName,
      phone: widget.defaultContactPhone,
    );
    widget.carForSaleStepNotifier?.value = 1;
    _carForSalePageController.nextPage(
      duration: const Duration(milliseconds: 320),
      curve: Curves.easeOutCubic,
    );
  }

  void _backCarForSaleStep2() {
    widget.carForSaleStepNotifier?.value = 0;
    _carForSalePageController.previousPage(
      duration: const Duration(milliseconds: 320),
      curve: Curves.easeOutCubic,
    );
  }

  void _onPostCarForSaleListing() {
    if (_isSubmittingListing) return;
    setState(() => _step2ShowRequiredErrors = true);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      if (!(_carsForSaleStep2FormKey.currentState?.validate() ?? false)) {
        return;
      }
      if (_selectedPickupLocation == null) {
        return;
      }
      _addListing();
    });
  }

  Future<void> _addListing() async {
    setState(() => _isSubmittingListing = true);
    try {
      final listing = buildListingFromForm();
      await ref.read(listingsProvider.notifier).add(listing);
      if (!mounted) return;
      AppSnackBar.show(
        context,
        message: 'Listing posted successfully.',
        variant: AppSnackBarVariant.success,
      );
      Navigator.of(context).pop();
    } catch (error) {
      if (!mounted) return;
      setState(() => _isSubmittingListing = false);
      AppSnackBar.show(
        context,
        message: error is ApiException
            ? error.userMessage
            : 'Could not post listing. Try again.',
        variant: AppSnackBarVariant.error,
      );
    }
  }

  Future<void> _openCarBrandPicker() async {
    final picked = await Navigator.of(context).push<CarBrandSelection>(
      MaterialPageRoute(builder: (context) => const CarBrandPickerPage()),
    );
    if (picked != null && mounted) {
      setState(() {
        _selectedCarBrand = picked;
        _selectedCarModel = null;
        _carVersionController.clear();
        _kilometersController.clear();
        _yearController.clear();
        _horsepowerController.clear();
        _fuelConsumptionController.clear();
        _numberOfSeatsController.clear();
        _numberOfDoorsController.clear();
        _numberOfOwnersController.clear();
        _adTitleController.clear();
        _descriptionController.clear();
        _priceController.clear();
        _nameController.clear();
        _phoneController.clear();
        _carCondition = null;
        _fuelType = null;
        _transmissionType = null;
        _carType = null;
        _airConditioning = null;
        _vehicleColor = null;
        _vehicleInterior = null;
        _selectedCarFeatures = [];
        _selectedPickupLocation = null;
        _contactMethod = ContactMethod.phoneNumber;
        _step2ShowRequiredErrors = false;
        _lastSuggestedAdTitle = '';
        _seededContactName = false;
        _seededContactPhone = false;
        _step1BrandError = null;
        _step1ModelError = null;
        _step1ConditionError = null;
        _carForSalePageController.jumpToPage(0);
        widget.carForSaleStepNotifier?.value = 0;
      });
    }
  }

  Future<void> _openExtraFeaturesSelector() async {
    final picked = await Navigator.of(context).push<List<CarFeature>>(
      createExtraFeaturesSelectorRoute(
        initialSelection: List<CarFeature>.from(_selectedCarFeatures),
      ),
    );
    if (picked != null && mounted) {
      setState(() => _selectedCarFeatures = picked);
    }
  }

  Future<void> _openCarModelPicker() async {
    final brand = _selectedCarBrand;
    if (brand == null) return;
    final picked = await Navigator.of(context).push<String>(
      MaterialPageRoute(
        builder: (context) => CarModelPickerPage(brandName: brand.name),
      ),
    );
    if (picked != null && mounted) {
      setState(() {
        _selectedCarModel = picked;
        _step1ModelError = null;
        _applySuggestedAdTitle();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isCarsForSale) {
      return PageView(
        controller: _carForSalePageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: context.spaceSmall),
                const ListingImagesSection(),
                SizedBox(height: context.spaceSmall),
                CarsForSaleListingBody(
                  formKey: _carsForSaleFormKey,
                  selectedBrand: _selectedCarBrand,
                  onChooseBrand: _openCarBrandPicker,
                  selectedModel: _selectedCarModel,
                  onChooseModel: _openCarModelPicker,
                  versionController: _carVersionController,
                  kilometersController: _kilometersController,
                  yearController: _yearController,
                  selectedCondition: _carCondition,
                  brandError: _step1BrandError,
                  modelError: _step1ModelError,
                  conditionError: _step1ConditionError,
                  onConditionChanged: (v) => setState(() {
                    _carCondition = v;
                    _step1ConditionError = null;
                    if (v == VehicleCondition.new_) {
                      _kilometersController.clear();
                    }
                  }),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    context.paddingMedium,
                    context.spaceSmall,
                    context.paddingMedium,
                    context.spaceMedium,
                  ),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: FilledButton(
                      onPressed: _tryAdvanceCarForSaleStep1,
                      style: FilledButton.styleFrom(
                        minimumSize: Size(
                          context.screenWidth * 0.38,
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
                        'Next',
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          CarsForSaleBodySecond(
            formKey: _carsForSaleStep2FormKey,
            fieldsResetKey: _selectedCarBrand,
            selectedFuelType: _fuelType,
            onFuelTypeChanged: (v) => setState(() => _fuelType = v),
            selectedTransmissionType: _transmissionType,
            onTransmissionTypeChanged: (v) =>
                setState(() => _transmissionType = v),
            selectedCarType: _carType,
            onCarTypeChanged: (v) {
              setState(() => _carType = v);
              WidgetsBinding.instance.addPostFrameCallback((_) {
                if (_numberOfSeatsController.text.trim().isNotEmpty) {
                  _numberOfSeatsFieldKey.currentState?.validate();
                }
                if (_numberOfDoorsController.text.trim().isNotEmpty) {
                  _numberOfDoorsFieldKey.currentState?.validate();
                }
              });
            },
            showRequiredErrors: _step2ShowRequiredErrors,
            numberOfSeatsFieldKey: _numberOfSeatsFieldKey,
            numberOfDoorsFieldKey: _numberOfDoorsFieldKey,
            horsepowerController: _horsepowerController,
            fuelConsumptionController: _fuelConsumptionController,
            selectedAirConditioning: _airConditioning,
            onAirConditioningChanged: (v) =>
                setState(() => _airConditioning = v),
            selectedVehicleColor: _vehicleColor,
            onVehicleColorChanged: (v) => setState(() => _vehicleColor = v),
            numberOfSeatsController: _numberOfSeatsController,
            numberOfDoorsController: _numberOfDoorsController,
            selectedVehicleInterior: _vehicleInterior,
            onVehicleInteriorChanged: (v) =>
                setState(() => _vehicleInterior = v),
            selectedCarFeatures: _selectedCarFeatures,
            onChooseExtraFeatures: _openExtraFeaturesSelector,
            numberOfOwnersController: _numberOfOwnersController,
            titleController: _adTitleController,
            descriptionController: _descriptionController,
            priceController: _priceController,
            nameController: _nameController,
            phoneController: _phoneController,
            selectedPickupLocation: _selectedPickupLocation,
            onPickupLocationChanged: (v) =>
                setState(() => _selectedPickupLocation = v),
            selectedContactMethod: _contactMethod,
            onContactMethodChanged: (v) => setState(() => _contactMethod = v),
            isSubmitting: _isSubmittingListing,
            onPrevious: _backCarForSaleStep2,
            onPostNow: _onPostCarForSaleListing,
          ),
        ],
      );
    }

    return SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: context.spaceSmall),
          const ListingImagesSection(),
          SizedBox(height: context.spaceSmall),
          VehiclesSubcategoryBody(
            category: widget.category,
            subcategory: widget.subcategory,
          ),
          SizedBox(height: context.spaceMedium),
        ],
      ),
    );
  }
}
