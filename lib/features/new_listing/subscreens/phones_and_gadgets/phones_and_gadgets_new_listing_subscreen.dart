import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/data/providers/new_listing/temp_listing_draft/temp_listing_draft_holder.dart';
import 'package:arzly/data/providers/new_listing/temp_phones_gadgets_draft/temp_phones_gadgets_draft_holder.dart';
import 'package:arzly/data/providers/temp_images_holder/temp_images_holder.dart';
import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';
import 'package:arzly/features/new_listing/shared/images/listing_images_section.dart';
import 'package:arzly/features/new_listing/subscreens/phones_and_gadgets/mobile_accessories/mobile_accessories_screen.dart';
import 'package:arzly/features/new_listing/subscreens/phones_and_gadgets/mobile_numbers/mobile_numbers_screen.dart';
import 'package:arzly/features/new_listing/subscreens/phones_and_gadgets/mobile_phones/mobile_phones_screen.dart';
import 'package:arzly/features/new_listing/subscreens/phones_and_gadgets/smart_watches/smart_watches_screen.dart';
import 'package:arzly/features/new_listing/subscreens/phones_and_gadgets/widgets/phones_and_gadgets_subcategory_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PhonesAndGadgetsNewListingSubscreen extends ConsumerStatefulWidget {
  const PhonesAndGadgetsNewListingSubscreen({
    super.key,
    required this.category,
    required this.subcategory,
    this.stepNotifier,
  });

  final Category category;
  final SubCategory subcategory;
  final ValueNotifier<int>? stepNotifier;

  @override
  ConsumerState<PhonesAndGadgetsNewListingSubscreen> createState() =>
      _PhonesAndGadgetsNewListingSubscreenState();
}

class _PhonesAndGadgetsNewListingSubscreenState
    extends ConsumerState<PhonesAndGadgetsNewListingSubscreen> {
  bool _draftReady = false;

  bool get _usesDedicatedPhonesFlow {
    final n = widget.subcategory.name.trim();
    return n == PhonesAndGadgetsSubcategoryBody.mobileNumbers ||
        n == PhonesAndGadgetsSubcategoryBody.mobilePhones ||
        n == PhonesAndGadgetsSubcategoryBody.mobileAccessories ||
        n == PhonesAndGadgetsSubcategoryBody.smartWatches;
  }

  @override
  void initState() {
    super.initState();
    if (_usesDedicatedPhonesFlow) {
      _draftReady = true;
      return;
    }
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (!mounted) return;
      ref.read(tempListingDraftHolderProvider.notifier).reset(
            categoryId: widget.category.id,
            subcategoryId: widget.subcategory.id,
          );
      ref.read(tempPhonesGadgetsDraftHolderProvider.notifier).reset();
      await ref.read(tempImagesHolderProvider.notifier).clear();
      if (!mounted) return;
      setState(() => _draftReady = true);
    });
  }

  @override
  Widget build(BuildContext context) {
    final name = widget.subcategory.name.trim();
    if (name == PhonesAndGadgetsSubcategoryBody.mobileNumbers) {
      return MobileNumbersScreen(
        category: widget.category,
        subcategory: widget.subcategory,
        stepNotifier: widget.stepNotifier,
      );
    }
    if (name == PhonesAndGadgetsSubcategoryBody.mobilePhones) {
      return MobilePhonesScreen(
        category: widget.category,
        subcategory: widget.subcategory,
        stepNotifier: widget.stepNotifier,
      );
    }
    if (name == PhonesAndGadgetsSubcategoryBody.mobileAccessories) {
      return MobileAccessoriesScreen(
        category: widget.category,
        subcategory: widget.subcategory,
        stepNotifier: widget.stepNotifier,
      );
    }
    if (name == PhonesAndGadgetsSubcategoryBody.smartWatches) {
      return SmartWatchesScreen(
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
          PhonesAndGadgetsSubcategoryBody(
            category: widget.category,
            subcategory: widget.subcategory,
          ),
          SizedBox(height: context.spaceMedium),
        ],
      ),
    );
  }
}
