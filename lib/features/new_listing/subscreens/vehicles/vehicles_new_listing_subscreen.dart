import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/job_listing/contact_method.dart';
import 'package:arzly/core/enums/listing/location_label.dart';
import 'package:arzly/core/enums/listing/listing_status.dart';
import 'package:arzly/core/enums/vehicles_details/vehicle_type.dart';
import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/listing/listing.dart';
import 'package:arzly/domain/entities/listing/vehicles_details/vehicles_details.dart';
import 'package:arzly/domain/entities/pickup_location/pickup_location.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';
import 'package:arzly/features/new_listing/shared/listing_images_section.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/car_brand_picker_page.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/car_model_picker_page.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/models/car_brand_selection.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/widgets/cars_for_sale/cars_for_sale_listing_body.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/widgets/vehicles_subcategory_body.dart';
import 'package:flutter/material.dart';

class VehiclesNewListingSubscreen extends StatefulWidget {
  const VehiclesNewListingSubscreen({
    super.key,
    required this.category,
    required this.subcategory,
  });

  final Category category;
  final SubCategory subcategory;

  @override
  VehiclesNewListingSubscreenState createState() =>
      VehiclesNewListingSubscreenState();
}

class VehiclesNewListingSubscreenState
    extends State<VehiclesNewListingSubscreen> {
  final List<String> _draftImageUrls = [];

  CarBrandSelection? _selectedCarBrand;
  String? _selectedCarModel;

  bool get _isCarsForSale =>
      widget.subcategory.name.trim() == VehiclesSubcategoryBody.carsForSale;

  List<String> get draftImageUrls => List<String>.unmodifiable(_draftImageUrls);

  CarBrandSelection? get selectedCarBrand => _selectedCarBrand;

  String? get selectedCarModel => _selectedCarModel;

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

    final vehiclesDetails = VehiclesDetails(
      carBrand: _selectedCarBrand?.name,
      carModel: _selectedCarModel,
      vehicleType: _isCarsForSale ? VehicleType.cars : null,
    );

    final title = [
      _selectedCarBrand?.name,
      _selectedCarModel,
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

  Future<void> _openCarBrandPicker() async {
    final picked = await Navigator.of(context).push<CarBrandSelection>(
      MaterialPageRoute(builder: (context) => const CarBrandPickerPage()),
    );
    if (picked != null && mounted) {
      setState(() {
        _selectedCarBrand = picked;
        _selectedCarModel = null;
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
      setState(() => _selectedCarModel = picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: context.spaceSmall),
        ListingImagesSection(imageUrls: _draftImageUrls),
        SizedBox(height: context.spaceSmall),
        Expanded(
          child: _isCarsForSale
              ? CarsForSaleListingBody(
                  selectedBrand: _selectedCarBrand,
                  onChooseBrand: _openCarBrandPicker,
                  selectedModel: _selectedCarModel,
                  onChooseModel: _openCarModelPicker,
                )
              : VehiclesSubcategoryBody(
                  category: widget.category,
                  subcategory: widget.subcategory,
                ),
        ),
      ],
    );
  }
}
