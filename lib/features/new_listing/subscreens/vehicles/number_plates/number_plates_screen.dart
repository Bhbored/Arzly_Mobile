import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/exceptions/api_exception.dart';
import 'package:arzly/data/providers/listings/listing_provider.dart';
import 'package:arzly/data/providers/new_listing/temp_listing_draft/temp_listing_draft_holder.dart';
import 'package:arzly/data/providers/new_listing/temp_vehicles_details/temp_vehicles_details_holder.dart';
import 'package:arzly/data/providers/temp_images_holder/temp_images_holder.dart';
import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/domain/entities/subcategory/sub_category.dart';
import 'package:arzly/features/new_listing/shared/images/listing_images_section.dart';
import 'package:arzly/features/new_listing/shared/images/listing_temp_images_validation.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/number_plates/number_plates_step1_body.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/number_plates/number_plates_step2_body.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/vehicles_listing_from_temp.dart';
import 'package:arzly/features/shared/snack_bar/app_snack_bar.dart';
import 'package:arzly/features/shared/snack_bar/app_snack_bar_variant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NumberPlatesScreen extends ConsumerStatefulWidget {
  const NumberPlatesScreen({
    super.key,
    required this.category,
    required this.subcategory,
    this.stepNotifier,
    this.defaultContactName,
    this.defaultContactPhone,
  });

  final Category category;
  final SubCategory subcategory;
  final ValueNotifier<int>? stepNotifier;
  final String? defaultContactName;
  final int? defaultContactPhone;

  @override
  ConsumerState<NumberPlatesScreen> createState() => _NumberPlatesScreenState();
}

class _NumberPlatesScreenState extends ConsumerState<NumberPlatesScreen> {
  final GlobalKey<FormState> _step1FormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _step2FormKey = GlobalKey<FormState>();
  late final PageController _pageController;
  bool _step1RequireErrors = false;
  bool _requireAtLeastOnePhotoError = false;
  bool _step2ShowRequiredErrors = false;
  bool _isSubmitting = false;
  bool _draftReady = false;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (!mounted) return;
      ref.read(tempListingDraftHolderProvider.notifier).reset(
            categoryId: widget.category.id,
            subcategoryId: widget.subcategory.id,
          );
      ref.read(tempVehiclesDetailsHolderProvider.notifier).reset();
      await ref.read(tempImagesHolderProvider.notifier).clear();
      if (!mounted) return;
      setState(() => _draftReady = true);
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _seedContactDefaults() {
    ref.read(tempListingDraftHolderProvider.notifier).update((l) {
      var next = l;
      if (widget.defaultContactName != null && next.name.trim().isEmpty) {
        next = next.copyWith(name: widget.defaultContactName!);
      }
      if (widget.defaultContactPhone != null &&
          next.phoneNumber.trim().isEmpty) {
        next = next.copyWith(phoneNumber: '${widget.defaultContactPhone}');
      }
      return next;
    });
  }

  void _tryAdvanceStep1() {
    if (!readTempListingHasAtLeastOnePhoto(ref)) {
      setState(() => _requireAtLeastOnePhotoError = true);
      return;
    }
    setState(() {
      _requireAtLeastOnePhotoError = false;
      _step1RequireErrors = true;
    });
    if (!(_step1FormKey.currentState?.validate() ?? false)) return;
    _seedContactDefaults();
    widget.stepNotifier?.value = 1;
    _pageController.nextPage(
      duration: const Duration(milliseconds: 320),
      curve: Curves.easeOutCubic,
    );
  }

  void _backStep2() {
    widget.stepNotifier?.value = 0;
    _pageController.previousPage(
      duration: const Duration(milliseconds: 320),
      curve: Curves.easeOutCubic,
    );
  }

  void _onPostNow() {
    if (_isSubmitting) return;
    setState(() => _step2ShowRequiredErrors = true);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      if (!(_step2FormKey.currentState?.validate() ?? false)) return;
      final draft = ref.read(tempListingDraftHolderProvider);
      if (draft.pickupLocationId.trim().isEmpty) return;
      _addListing();
    });
  }

  Future<void> _addListing() async {
    setState(() => _isSubmitting = true);
    try {
      final uploaded = await ref.read(tempImagesHolderProvider.notifier).upload();
      final base = buildListingFromTempDrafts(
        ref,
        category: widget.category,
        subcategory: widget.subcategory,
        isNumberPlates: true,
      );
      final listing = base.copyWith(
        primaryImageUrl: uploaded.primaryImageUrl,
        imagesUrl: uploaded.imagesUrl,
      );
      await ref.read(listingsProvider.notifier).add(listing);
      if (!mounted) return;
      await ref.read(tempImagesHolderProvider.notifier).clear();
      if (!mounted) return;
      AppSnackBar.show(
        context,
        message: 'Listing posted successfully.',
        variant: AppSnackBarVariant.success,
      );
      Navigator.of(context).pop();
    } catch (error) {
      if (!mounted) return;
      setState(() => _isSubmitting = false);
      AppSnackBar.show(
        context,
        message: error is ApiException
            ? error.userMessage
            : 'Could not post listing. Try again.',
        variant: AppSnackBarVariant.error,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    if (!_draftReady) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: context.spaceSmall),
          Expanded(
            child: Center(
              child: CircularProgressIndicator(color: scheme.primary),
            ),
          ),
        ],
      );
    }

    final hasListingPhotos = watchTempListingHasAtLeastOnePhoto(ref);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: context.spaceSmall),
        Expanded(
          child: PageView(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              SingleChildScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ListingImagesSection(
                      showRequireAtLeastOnePhotoError:
                          _requireAtLeastOnePhotoError && !hasListingPhotos,
                    ),
                    SizedBox(height: context.spaceSmall),
                    Form(
                      key: _step1FormKey,
                      child: NumberPlatesStep1Body(
                        requireFieldErrors: _step1RequireErrors,
                      ),
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
                          onPressed: _tryAdvanceStep1,
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
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: scheme.onPrimary,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              NumberPlatesStep2Body(
                formKey: _step2FormKey,
                showRequiredErrors: _step2ShowRequiredErrors,
                isSubmitting: _isSubmitting,
                onPrevious: _backStep2,
                onPostNow: _onPostNow,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
