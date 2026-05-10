import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';
import 'package:arzly/features/new_listing/shared/listing_form_section_shell.dart';
import 'package:flutter/material.dart';

class VehiclesSubcategoryBody extends StatelessWidget {
  const VehiclesSubcategoryBody({
    super.key,
    required this.category,
    required this.subcategory,
  });

  final Category category;
  final SubCategory subcategory;

  static const String carsForSale = 'Cars For Sale';

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: ValueKey('${category.id}_${subcategory.id}'),
      child: ListingFormSectionShell(
        title: subcategory.name,
        hint:
            'Vehicle listing fields for this subcategory — motors / listing_owned.',
      ),
    );
  }
}
