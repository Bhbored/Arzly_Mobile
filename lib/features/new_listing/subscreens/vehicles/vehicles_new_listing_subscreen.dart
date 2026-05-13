import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';
import 'package:arzly/features/new_listing/shared/images/listing_images_section.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/cars_for_sale/cars_for_sale_screen.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/number_plates/number_plates_screen.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/widgets/vehicles_subcategory_body.dart';
import 'package:flutter/material.dart';

class VehiclesNewListingSubscreen extends StatelessWidget {
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
  Widget build(BuildContext context) {
    final name = subcategory.name.trim();
    if (name == VehiclesSubcategoryBody.carsForSale) {
      return CarsForSaleScreen(
        category: category,
        subcategory: subcategory,
        stepNotifier: carForSaleStepNotifier,
        defaultContactName: defaultContactName,
        defaultContactPhone: defaultContactPhone,
      );
    }
    if (name == VehiclesSubcategoryBody.numberPlates) {
      return NumberPlatesScreen(
        category: category,
        subcategory: subcategory,
        stepNotifier: carForSaleStepNotifier,
        defaultContactName: defaultContactName,
        defaultContactPhone: defaultContactPhone,
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
            category: category,
            subcategory: subcategory,
          ),
          SizedBox(height: context.spaceMedium),
        ],
      ),
    );
  }
}
