import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/job_listing/contact_method.dart';
import 'package:arzly/core/enums/listing/location_label.dart';
import 'package:arzly/core/enums/listing/listing_status.dart';
import 'package:arzly/core/enums/listing_owned/motors/fuel_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/transmission_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/vehicle_condition.dart';
import 'package:arzly/core/enums/listing_owned/motors/vehicle_type.dart';
import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/listing/listing.dart';
import 'package:arzly/domain/entities/listing/vehicles_details/vehicles_details.dart';
import 'package:arzly/domain/entities/pickup_location/pickup_location.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';
import 'package:arzly/features/new_listing/shared/listing_images_section.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/car_brand_picker_page.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/car_model_picker_page.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/models/car_brand_selection.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/widgets/cars_for_sale/cars_for_sale_body_second.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/widgets/cars_for_sale/cars_for_sale_kilometers_field.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/widgets/cars_for_sale/cars_for_sale_listing_body.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/widgets/cars_for_sale/cars_for_sale_year_field.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/widgets/vehicles_subcategory_body.dart';
import 'package:flutter/material.dart';

class VehiclesNewListingSubscreen extends StatefulWidget {
  const VehiclesNewListingSubscreen({
    super.key,
    required this.category,
    required this.subcategory,
    this.carForSaleStepNotifier,
  });

  final Category category;
  final SubCategory subcategory;
  final ValueNotifier<int>? carForSaleStepNotifier;

  @override
  VehiclesNewListingSubscreenState createState() =>
      VehiclesNewListingSubscreenState();
}

class VehiclesNewListingSubscreenState
    extends State<VehiclesNewListingSubscreen> {
  final List<String> _draftImageUrls = [];
  final TextEditingController _carVersionController = TextEditingController();
  final TextEditingController _kilometersController = TextEditingController();
  final TextEditingController _yearController = TextEditingController();
  final GlobalKey<FormState> _carsForSaleFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _carsForSaleStep2FormKey = GlobalKey<FormState>();
  late final PageController _carForSalePageController;

  CarBrandSelection? _selectedCarBrand;
  String? _selectedCarModel;
  VehicleCondition? _carCondition;
  FuelType? _fuelType;
  TransmissionType? _transmissionType;

  String? _step1BrandError;
  String? _step1ModelError;
  String? _step1ConditionError;

  bool get _isCarsForSale =>
      widget.subcategory.name.trim() == VehiclesSubcategoryBody.carsForSale;

  List<String> get draftImageUrls => List<String>.unmodifiable(_draftImageUrls);

  CarBrandSelection? get selectedCarBrand => _selectedCarBrand;

  String? get selectedCarModel => _selectedCarModel;

  @override
  void initState() {
    super.initState();
    _carForSalePageController = PageController();
  }

  @override
  void dispose() {
    _carForSalePageController.dispose();
    _carVersionController.dispose();
    _kilometersController.dispose();
    _yearController.dispose();
    super.dispose();
  }

  void setDraftImageUrls(List<String> urls) {
    setState(() {
      _draftImageUrls
        ..clear()
        ..addAll(urls);
    });
  }

  Listing buildListingFromForm() {
    final category = widget.category;
    final subcategory = widget.subcategory;

    final versionText = _carVersionController.text.trim();
    final kilometers = _carCondition == VehicleCondition.new_
        ? null
        : parseCarKilometers(_kilometersController.text);
    final year = parseCarYear(_yearController.text);
    final vehiclesDetails = VehiclesDetails(
      carBrand: _selectedCarBrand?.name,
      carModel: _selectedCarModel,
      version: versionText.isEmpty ? null : versionText,
      condition: _carCondition,
      year: year,
      kilometers: kilometers,
      fuelType: _fuelType,
      transmissionType: _transmissionType,
      vehicleType: _isCarsForSale ? VehicleType.cars : null,
    );

    final title = [
      _selectedCarBrand?.name,
      _selectedCarModel,
      if (versionText.isNotEmpty) versionText,
      if (_carCondition != null) _carCondition!.label,
      if (_fuelType != null) _fuelType!.label,
      if (_transmissionType != null) _transmissionType!.label,
    ].whereType<String>().where((s) => s.isNotEmpty).join(' ');

    final primaryImageUrl = _draftImageUrls.isNotEmpty
        ? _draftImageUrls.first
        : null;

    final now = DateTime.now();

    return Listing(
      id: '',
      title: title,
      description: '',
      price: 0,
      status: ListingStatus.pending,
      primaryImageUrl: primaryImageUrl,
      imagesUrl: List<String>.from(_draftImageUrls),
      createdAt: now,
      name: '',
      phoneNumber: '',
      contactMethod: ContactMethod.phoneNumber,
      ownerId: '',
      categoryId: category.id,
      subcategoryId: subcategory.id,
      pickupLocationId: '',
      pickupLocation: PickupLocation(
        id: '',
        userId: '',
        label: LocationLabel.other,
        address: '',
        lat: 0,
        lon: 0,
        isDefault: false,
      ),
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
    if (!(_carsForSaleStep2FormKey.currentState?.validate() ?? false)) {
      return;
    }
    final listing = buildListingFromForm();
    if (!mounted) return;
    Navigator.of(context).pop<Listing>(listing);
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
        _carCondition = null;
        _fuelType = null;
        _transmissionType = null;
        _step1BrandError = null;
        _step1ModelError = null;
        _step1ConditionError = null;
        _carForSalePageController.jumpToPage(0);
        widget.carForSaleStepNotifier?.value = 0;
      });
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
                ListingImagesSection(imageUrls: _draftImageUrls),
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
          ListingImagesSection(imageUrls: _draftImageUrls),
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
