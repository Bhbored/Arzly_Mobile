import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/data/providers/new_listing/temp_listing_draft/temp_listing_draft_holder.dart';
import 'package:arzly/data/providers/new_listing/temp_real_estate_draft/temp_real_estate_draft_holder.dart';
import 'package:arzly/data/providers/temp_images_holder/temp_images_holder.dart';
import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';
import 'package:arzly/features/new_listing/shared/images/listing_images_section.dart';
import 'package:arzly/features/new_listing/subscreens/real_estate/chalet_cabins/chalet_listing_screen.dart';
import 'package:arzly/features/new_listing/subscreens/real_estate/commercials/commercial_listing_screen.dart';
import 'package:arzly/features/new_listing/subscreens/real_estate/houses_for_rent/houses_for_rent_screen.dart';
import 'package:arzly/features/new_listing/subscreens/real_estate/houses_for_sale/houses_for_sale_screen.dart';
import 'package:arzly/features/new_listing/subscreens/real_estate/land_for_sale/land_for_sale_screen.dart';
import 'package:arzly/features/new_listing/subscreens/real_estate/rooms_for_rent/rooms_for_rent_screen.dart';
import 'package:arzly/features/new_listing/subscreens/real_estate/widgets/real_estate_subcategory_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RealEstateNewListingSubscreen extends ConsumerStatefulWidget {
  const RealEstateNewListingSubscreen({
    super.key,
    required this.category,
    required this.subcategory,
    this.stepNotifier,
  });

  final Category category;
  final SubCategory subcategory;
  final ValueNotifier<int>? stepNotifier;

  @override
  ConsumerState<RealEstateNewListingSubscreen> createState() =>
      _RealEstateNewListingSubscreenState();
}

class _RealEstateNewListingSubscreenState
    extends ConsumerState<RealEstateNewListingSubscreen> {
  bool _draftReady = false;

  bool get _usesDedicatedRealEstateFlow {
    final n = widget.subcategory.name.trim();
    return n == RealEstateSubcategoryBody.housesForSale ||
        n == RealEstateSubcategoryBody.housesForRent ||
        n == RealEstateSubcategoryBody.landForSale ||
        n == RealEstateSubcategoryBody.landForRent ||
        n == RealEstateSubcategoryBody.commercialsForSale ||
        n == RealEstateSubcategoryBody.commercialsForRent ||
        n == RealEstateSubcategoryBody.chaletsCabinsForSale ||
        n == RealEstateSubcategoryBody.chaletsCabinsForRent ||
        n == RealEstateSubcategoryBody.roomsForRent;
  }

  @override
  void initState() {
    super.initState();
    if (_usesDedicatedRealEstateFlow) {
      _draftReady = true;
      return;
    }
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (!mounted) return;
      ref
          .read(tempListingDraftHolderProvider.notifier)
          .reset(
            categoryId: widget.category.id,
            subcategoryId: widget.subcategory.id,
          );
      ref.read(tempRealEstateDraftHolderProvider.notifier).reset();
      await ref.read(tempImagesHolderProvider.notifier).clear();
      if (!mounted) return;
      setState(() => _draftReady = true);
    });
  }

  @override
  Widget build(BuildContext context) {
    final name = widget.subcategory.name.trim();
    if (name == RealEstateSubcategoryBody.housesForSale) {
      return HousesForSaleScreen(
        category: widget.category,
        subcategory: widget.subcategory,
        stepNotifier: widget.stepNotifier,
      );
    }
    if (name == RealEstateSubcategoryBody.housesForRent) {
      return HousesForRentScreen(
        category: widget.category,
        subcategory: widget.subcategory,
        stepNotifier: widget.stepNotifier,
      );
    }
    if (name == RealEstateSubcategoryBody.landForSale ||
        name == RealEstateSubcategoryBody.landForRent) {
      return LandForSaleScreen(
        category: widget.category,
        subcategory: widget.subcategory,
        stepNotifier: widget.stepNotifier,
      );
    }
    if (name == RealEstateSubcategoryBody.commercialsForSale ||
        name == RealEstateSubcategoryBody.commercialsForRent) {
      return CommercialListingScreen(
        category: widget.category,
        subcategory: widget.subcategory,
        stepNotifier: widget.stepNotifier,
      );
    }
    if (name == RealEstateSubcategoryBody.chaletsCabinsForSale ||
        name == RealEstateSubcategoryBody.chaletsCabinsForRent) {
      return ChaletListingScreen(
        category: widget.category,
        subcategory: widget.subcategory,
        stepNotifier: widget.stepNotifier,
      );
    }
    if (name == RealEstateSubcategoryBody.roomsForRent) {
      return RoomsForRentScreen(
        category: widget.category,
        subcategory: widget.subcategory,
        stepNotifier: widget.stepNotifier,
      );
    }

    if (!_draftReady) {
      final scheme = Theme.of(context).colorScheme;
      return Center(child: CircularProgressIndicator(color: scheme.primary));
    }

    return SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: context.spaceSmall),
          const ListingImagesSection(),
          SizedBox(height: context.spaceSmall),
          RealEstateSubcategoryBody(
            category: widget.category,
            subcategory: widget.subcategory,
          ),
          SizedBox(height: context.spaceMedium),
        ],
      ),
    );
  }
}
