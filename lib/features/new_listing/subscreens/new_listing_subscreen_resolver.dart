import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';
import 'package:arzly/features/new_listing/backend_listing_catalog.dart';
import 'package:arzly/features/new_listing/subscreens/electronics_and_appliances/electronics_and_appliances_new_listing_subscreen.dart';
import 'package:arzly/features/new_listing/subscreens/fashion_and_style/fashion_and_style_new_listing_subscreen.dart';
import 'package:arzly/features/new_listing/subscreens/furniture_and_decor/furniture_and_decor_new_listing_subscreen.dart';
import 'package:arzly/features/new_listing/subscreens/hobbies/hobbies_new_listing_subscreen.dart';
import 'package:arzly/features/new_listing/subscreens/kids_and_babies/kids_and_babies_new_listing_subscreen.dart';
import 'package:arzly/features/new_listing/subscreens/pets/pets_new_listing_subscreen.dart';
import 'package:arzly/features/new_listing/subscreens/phones_and_gadgets/phones_and_gadgets_new_listing_subscreen.dart';
import 'package:arzly/features/new_listing/subscreens/real_estate/real_estate_new_listing_subscreen.dart';
import 'package:arzly/features/new_listing/subscreens/services/services_new_listing_subscreen.dart';
import 'package:arzly/features/new_listing/subscreens/sports_and_equipment/sports_and_equipment_new_listing_subscreen.dart';
import 'package:arzly/features/new_listing/subscreens/unknown_category/unknown_category_new_listing_subscreen.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/vehicles_new_listing_subscreen.dart';
import 'package:flutter/material.dart';

Widget newListingCategorySubscreen(Category category, SubCategory subcategory) {
  return switch (category.name.trim()) {
    BackendListingCatalog.vehicles => VehiclesNewListingSubscreen(
      category: category,
      subcategory: subcategory,
    ),
    BackendListingCatalog.realEstate => RealEstateNewListingSubscreen(
      category: category,
      subcategory: subcategory,
    ),
    BackendListingCatalog.phonesAndGadgets =>
      PhonesAndGadgetsNewListingSubscreen(
        category: category,
        subcategory: subcategory,
      ),
    BackendListingCatalog.electronicsAndAppliances =>
      ElectronicsAndAppliancesNewListingSubscreen(
        category: category,
        subcategory: subcategory,
      ),
    BackendListingCatalog.furnitureAndDecor =>
      FurnitureAndDecorNewListingSubscreen(
        category: category,
        subcategory: subcategory,
      ),
    BackendListingCatalog.pets => PetsNewListingSubscreen(
      category: category,
      subcategory: subcategory,
    ),
    BackendListingCatalog.kidsAndBabies => KidsAndBabiesNewListingSubscreen(
      category: category,
      subcategory: subcategory,
    ),
    BackendListingCatalog.sportsAndEquipment =>
      SportsAndEquipmentNewListingSubscreen(
        category: category,
        subcategory: subcategory,
      ),
    BackendListingCatalog.hobbies => HobbiesNewListingSubscreen(
      category: category,
      subcategory: subcategory,
    ),
    BackendListingCatalog.fashionAndStyle => FashionAndStyleNewListingSubscreen(
      category: category,
      subcategory: subcategory,
    ),
    BackendListingCatalog.services => ServicesNewListingSubscreen(
      category: category,
      subcategory: subcategory,
    ),
    _ => UnknownCategoryNewListingSubscreen(
      category: category,
      subcategory: subcategory,
    ),
  };
}
