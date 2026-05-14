import 'package:arzly/features/categories/category_picker.dart';
import 'package:arzly/features/new_listing/backend_listing_catalog.dart';
import 'package:arzly/features/new_listing/new_listing_adder_header.dart';
import 'package:arzly/features/new_listing/subscreens/new_listing_subscreen_resolver.dart';
import 'package:arzly/features/new_listing/subscreens/phones_and_gadgets/widgets/phones_and_gadgets_subcategory_body.dart';
import 'package:arzly/features/new_listing/subscreens/real_estate/widgets/real_estate_subcategory_body.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/widgets/vehicles_subcategory_body.dart';
import 'package:flutter/material.dart';

class NewListingAdderPage extends StatefulWidget {
  const NewListingAdderPage({super.key, required this.pick});

  final CategorySubcategoryPick pick;

  @override
  State<NewListingAdderPage> createState() => _NewListingAdderPageState();
}

class _NewListingAdderPageState extends State<NewListingAdderPage> {
  late final ValueNotifier<int> _carForSaleStep;

  @override
  void initState() {
    super.initState();
    _carForSaleStep = ValueNotifier(0);
  }

  @override
  void dispose() {
    _carForSaleStep.dispose();
    super.dispose();
  }

  bool get _showListingFlowStepProgress =>
      (widget.pick.category.name.trim() == BackendListingCatalog.vehicles &&
          (widget.pick.subcategory.name.trim() ==
                  VehiclesSubcategoryBody.carsForSale ||
              widget.pick.subcategory.name.trim() ==
                  VehiclesSubcategoryBody.numberPlates ||
              widget.pick.subcategory.name.trim() ==
                  VehiclesSubcategoryBody.motorcyclesAndAtvs)) ||
      (widget.pick.category.name.trim() == BackendListingCatalog.realEstate &&
          (widget.pick.subcategory.name.trim() ==
                  RealEstateSubcategoryBody.housesForSale ||
              widget.pick.subcategory.name.trim() ==
                  RealEstateSubcategoryBody.housesForRent ||
              widget.pick.subcategory.name.trim() ==
                  RealEstateSubcategoryBody.landForSale ||
              widget.pick.subcategory.name.trim() ==
                  RealEstateSubcategoryBody.landForRent ||
              widget.pick.subcategory.name.trim() ==
                  RealEstateSubcategoryBody.commercialsForSale ||
              widget.pick.subcategory.name.trim() ==
                  RealEstateSubcategoryBody.commercialsForRent ||
              widget.pick.subcategory.name.trim() ==
                  RealEstateSubcategoryBody.chaletsCabinsForSale ||
              widget.pick.subcategory.name.trim() ==
                  RealEstateSubcategoryBody.chaletsCabinsForRent ||
              widget.pick.subcategory.name.trim() ==
                  RealEstateSubcategoryBody.roomsForRent)) ||
      (widget.pick.category.name.trim() == BackendListingCatalog.phonesAndGadgets &&
          (widget.pick.subcategory.name.trim() ==
                  PhonesAndGadgetsSubcategoryBody.mobileNumbers ||
              widget.pick.subcategory.name.trim() ==
                  PhonesAndGadgetsSubcategoryBody.mobilePhones ||
              widget.pick.subcategory.name.trim() ==
                  PhonesAndGadgetsSubcategoryBody.mobileAccessories ||
              widget.pick.subcategory.name.trim() ==
                  PhonesAndGadgetsSubcategoryBody.smartWatches));

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final pageBg = colors.surfaceContainerLowest;
    final category = widget.pick.category;
    final subcategory = widget.pick.subcategory;

    return Scaffold(
      backgroundColor: pageBg,
      appBar: AppBar(
        backgroundColor: pageBg,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        titleSpacing: 0,
        centerTitle: false,
        title: Text(
          'New listing',
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          NewListingAdderHeader(
            category: category,
            subcategory: subcategory,
            carForSaleStepListenable: _showListingFlowStepProgress
                ? _carForSaleStep
                : null,
            carForSaleStepTotal: 2,
          ),
          Divider(
            height: 1,
            color: colors.outlineVariant.withValues(alpha: 0.35),
          ),
          Expanded(
            child: newListingCategorySubscreen(
              category,
              subcategory,
              listingFlowStepNotifier: _showListingFlowStepProgress
                  ? _carForSaleStep
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
