import 'package:arzly/features/categories/category_picker.dart';
import 'package:arzly/features/new_listing/new_listing_adder_header.dart';
import 'package:arzly/features/new_listing/subscreens/new_listing_subscreen_resolver.dart';
import 'package:flutter/material.dart';

class NewListingAdderPage extends StatelessWidget {
  const NewListingAdderPage({super.key, required this.pick});

  final CategorySubcategoryPick pick;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final pageBg = colors.surfaceContainerLowest;
    final category = pick.category;
    final subcategory = pick.subcategory;

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
          NewListingAdderHeader(category: category, subcategory: subcategory),
          Divider(
            height: 1,
            color: colors.outlineVariant.withValues(alpha: 0.35),
          ),
          Expanded(child: newListingCategorySubscreen(category, subcategory)),
        ],
      ),
    );
  }
}
