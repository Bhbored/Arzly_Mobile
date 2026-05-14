import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';
import 'package:arzly/features/new_listing/shared/placeholder/default_subcategory_placeholder.dart';
import 'package:flutter/material.dart';

class RealEstateSubcategoryBody extends StatelessWidget {
  const RealEstateSubcategoryBody({
    super.key,
    required this.category,
    required this.subcategory,
  });

  static const String housesForSale = 'Houses For Sale';
  static const String housesForRent = 'Houses For Rent';
  static const String landForSale = 'Land For Sale';
  static const String landForRent = 'Land For Rent';
  static const String commercialsForSale = 'Commercials For Sale';
  static const String commercialsForRent = 'Commercials For Rent';
  static const String chaletsCabinsForSale = 'Chalets & Cabins For Sale';
  static const String chaletsCabinsForRent = 'Chalets & Cabins For Rent';
  static const String roomsForRent = 'Rooms For Rent';

  final Category category;
  final SubCategory subcategory;

  @override
  Widget build(BuildContext context) {
    return DefaultSubcategoryPlaceholder(
      category: category,
      subcategory: subcategory,
      listingOwnedFolder: 'real_estate',
    );
  }
}
