import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/data/providers/new_listing/temp_listing_draft/temp_listing_draft_holder.dart';
import 'package:arzly/data/providers/new_listing/temp_phones_gadgets_draft/temp_phones_gadgets_draft_holder.dart';
import 'package:arzly/data/providers/new_listing/temp_real_estate_draft/temp_real_estate_draft_holder.dart';
import 'package:arzly/data/providers/new_listing/temp_vehicles_details/temp_vehicles_details_holder.dart';
import 'package:arzly/domain/entities/listing/listing.dart';
import 'package:arzly/domain/entities/pickup_location/pickup_location.dart';
import 'package:arzly/features/new_listing/shared/publishing/listing_contact_method_field.dart';
import 'package:arzly/features/new_listing/shared/form/listing_form_section_divider.dart';
import 'package:arzly/features/new_listing/shared/publishing/listing_pickup_location_field.dart';
import 'package:arzly/features/new_listing/shared/inputs/car_picker_search_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

String? validateListingTitle(String? raw, {required bool showRequiredErrors}) {
  final value = raw?.trim() ?? '';
  if (value.isEmpty) {
    return showRequiredErrors ? 'Enter ad title' : null;
  }
  return null;
}

String? validateListingDescription(
  String? raw, {
  required bool showRequiredErrors,
}) {
  final value = raw?.trim() ?? '';
  if (value.isEmpty) {
    return showRequiredErrors ? 'Enter description' : null;
  }
  return null;
}

String? validateListingPrice(String? raw, {required bool showRequiredErrors}) {
  final value = raw?.trim() ?? '';
  if (value.isEmpty) {
    return showRequiredErrors ? 'Enter price' : null;
  }
  final price = double.tryParse(value);
  if (price == null) {
    return 'Enter a valid price';
  }
  if (price <= 0) {
    return 'Price must be greater than 0';
  }
  return null;
}

String? validateListingName(String? raw, {required bool showRequiredErrors}) {
  final value = raw?.trim() ?? '';
  if (value.isEmpty) {
    return showRequiredErrors ? 'Enter your name' : null;
  }
  return null;
}

String? validateListingPhone(String? raw, {required bool showRequiredErrors}) {
  final value = raw?.trim() ?? '';
  if (value.isEmpty) {
    return showRequiredErrors ? 'Enter mobile phone' : null;
  }
  if (!RegExp(r'^\d+$').hasMatch(value)) {
    return 'Use numbers only';
  }
  if (value.length < 7 || value.length > 8) {
    return 'Enter a valid Lebanese mobile number';
  }
  return null;
}

double? parseListingPrice(String raw) {
  final value = raw.trim();
  if (value.isEmpty) return null;
  final price = double.tryParse(value);
  if (price == null || price <= 0) return null;
  return price;
}

String _priceFieldText(double price) {
  if (price <= 0) return '';
  if (price == price.roundToDouble()) return price.toInt().toString();
  return price.toString();
}

PickupLocation? _pickupForUi(Listing listing) {
  if (listing.pickupLocationId.trim().isEmpty) return null;
  return listing.pickupLocation;
}

class ListingPublishingDetailsSection extends ConsumerStatefulWidget {
  const ListingPublishingDetailsSection({
    super.key,
    required this.pageBg,
    required this.showRequiredErrors,
    this.premadeTitle,
  });

  final Color pageBg;
  final bool showRequiredErrors;
  final String? premadeTitle;

  @override
  ConsumerState<ListingPublishingDetailsSection> createState() =>
      _ListingPublishingDetailsSectionState();
}

class _ListingPublishingDetailsSectionState
    extends ConsumerState<ListingPublishingDetailsSection> {
  late final TextEditingController _titleController;
  late final TextEditingController _descriptionController;
  late final TextEditingController _priceController;
  late final TextEditingController _nameController;
  late final TextEditingController _phoneController;

  @override
  void initState() {
    super.initState();
    final draft = ref.read(tempListingDraftHolderProvider);
    final premade = widget.premadeTitle?.trim();
    final premadeUsable = premade != null && premade.isNotEmpty;
    final usePremade = premadeUsable && draft.title.trim().isEmpty;
    final initialTitle = usePremade ? premade : draft.title;
    _titleController = TextEditingController(text: initialTitle);
    _descriptionController = TextEditingController(text: draft.description);
    _priceController = TextEditingController(
      text: _priceFieldText(draft.price),
    );
    _nameController = TextEditingController(text: draft.name);
    _phoneController = TextEditingController(text: draft.phoneNumber);
    if (usePremade) {
      final titleToSeed = premade;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        ref
            .read(tempListingDraftHolderProvider.notifier)
            .update((l) => l.copyWith(title: titleToSeed));
      });
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _priceController.dispose();
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  void _applyDraftTitle(String next) {
    if (_titleController.text == next) return;
    _titleController.value = TextEditingValue(
      text: next,
      selection: TextSelection.collapsed(offset: next.length),
    );
  }

  void _applyDraftText(TextEditingController c, String next) {
    if (c.text == next) return;
    c.value = TextEditingValue(
      text: next,
      selection: TextSelection.collapsed(offset: next.length),
    );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<String>(tempListingDraftHolderProvider.select((s) => s.title), (
      previous,
      next,
    ) {
      if (_titleController.text != next) {
        _applyDraftTitle(next);
      }
    });
    ref.listen<String>(tempListingDraftHolderProvider.select((s) => s.name), (
      previous,
      next,
    ) {
      if (_nameController.text != next) {
        _applyDraftText(_nameController, next);
      }
    });
    ref.listen<String>(
      tempListingDraftHolderProvider.select((s) => s.phoneNumber),
      (previous, next) {
        if (_phoneController.text != next) {
          _applyDraftText(_phoneController, next);
        }
      },
    );

    final scheme = Theme.of(context).colorScheme;
    final draft = ref.watch(tempListingDraftHolderProvider);
    final pickupResetKey = Object.hash(
      ref.watch(
        tempVehiclesDetailsHolderProvider.select(
          (s) => Object.hash(
            s.carBrand,
            s.carModel,
            s.motorcycleBrand,
            s.motorcycleModel,
            s.numberOfDigits,
            s.version,
            s.partType,
            s.vehicleType,
            s.accessoryType,
            s.truckBrand,
            s.boatType,
            s.condition,
          ),
        ),
      ),
      ref.watch(
        tempRealEstateDraftHolderProvider.select(
          (s) => Object.hash(
            s.propertyType,
            s.ownership,
            s.bedrooms,
            s.bathrooms,
            s.size,
            s.furnished,
            s.condition,
            s.floor,
            s.features,
            s.propertyAge,
            s.referenceId,
            s.landType,
            s.commercialType,
            s.equipped,
            s.commercialFeatures,
            s.chaletType,
            s.chaletFeatures,
            s.roomFeatures,
          ),
        ),
      ),
      ref.watch(
        tempPhonesGadgetsDraftHolderProvider.select(
          (s) => Object.hash(
            s.phoneBrand,
            s.phoneCondition,
            s.storage,
            s.color,
            s.accessoryBrand,
            s.accessoryItemType,
            s.operator,
            s.membershipType,
            s.watchBrand,
            s.watchStorage,
            s.bandMaterial,
            s.bandColor,
          ),
        ),
      ),
    );

    final fieldDecoration = carForSaleVersionFieldDecoration(
      context,
      widget.pageBg,
      scheme,
      hintText: '',
    ).copyWith(isDense: true);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _ListingPublishingFieldLabel(title: 'Ad title'),
        SizedBox(height: context.spaceSmall),
        TextFormField(
          controller: _titleController,
          maxLines: 1,
          textInputAction: TextInputAction.next,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: (v) => ref
              .read(tempListingDraftHolderProvider.notifier)
              .update((l) => l.copyWith(title: v)),
          validator: (value) => validateListingTitle(
            value,
            showRequiredErrors: widget.showRequiredErrors,
          ),
          decoration: fieldDecoration.copyWith(hintText: 'Enter ad title'),
        ),
        SizedBox(height: context.spaceSmall),
        _ListingPublishingFieldLabel(title: 'Description'),
        SizedBox(height: context.spaceSmall),
        TextFormField(
          controller: _descriptionController,
          minLines: 3,
          maxLines: 5,
          keyboardType: TextInputType.multiline,
          textInputAction: TextInputAction.newline,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: (v) => ref
              .read(tempListingDraftHolderProvider.notifier)
              .update((l) => l.copyWith(description: v)),
          validator: (value) => validateListingDescription(
            value,
            showRequiredErrors: widget.showRequiredErrors,
          ),
          decoration: fieldDecoration.copyWith(
            hintText: 'Describe your listing',
            alignLabelWithHint: true,
            contentPadding: EdgeInsets.symmetric(
              horizontal: context.paddingMedium,
              vertical: context.spaceSmall * 1.35,
            ),
          ),
        ),
        SizedBox(height: context.spaceSmall),
        _ListingPublishingFieldLabel(title: 'Location'),
        SizedBox(height: context.spaceSmall),
        ListingPickupLocationField(
          fieldsResetKey: pickupResetKey,
          value: _pickupForUi(draft),
          onChanged: (v) => ref
              .read(tempListingDraftHolderProvider.notifier)
              .update(
                (l) => l.copyWith(
                  pickupLocation: v ?? kListingDraftPickupPlaceholder,
                  pickupLocationId: v?.id ?? '',
                ),
              ),
          showRequiredErrors: widget.showRequiredErrors,
          pageBg: widget.pageBg,
        ),
        SizedBox(height: context.spaceSmall),
        _ListingPublishingFieldLabel(title: 'Price'),
        SizedBox(height: context.spaceSmall),
        _ListingUsdPriceField(
          controller: _priceController,
          pageBg: widget.pageBg,
          showRequiredErrors: widget.showRequiredErrors,
          onChanged: (v) => ref
              .read(tempListingDraftHolderProvider.notifier)
              .update((l) => l.copyWith(price: parseListingPrice(v) ?? 0)),
        ),
        SizedBox(height: context.spaceSmall * 0.75),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
              width: 40,
              child: Checkbox(
                value: draft.isPriceNegotiable,
                onChanged: (v) => ref
                    .read(tempListingDraftHolderProvider.notifier)
                    .update((l) => l.copyWith(isPriceNegotiable: v ?? false)),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                visualDensity: VisualDensity.compact,
              ),
            ),
            Expanded(
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () => ref
                    .read(tempListingDraftHolderProvider.notifier)
                    .update(
                      (l) =>
                          l.copyWith(isPriceNegotiable: !l.isPriceNegotiable),
                    ),
                child: Text(
                  'Negotiable',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: scheme.onSurface,
                  ),
                ),
              ),
            ),
          ],
        ),
        const ListingFormSectionDivider(),
        _ListingPublishingFieldLabel(title: 'Your name'),
        SizedBox(height: context.spaceSmall),
        TextFormField(
          controller: _nameController,
          maxLines: 1,
          textInputAction: TextInputAction.next,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: (v) => ref
              .read(tempListingDraftHolderProvider.notifier)
              .update((l) => l.copyWith(name: v)),
          validator: (value) => validateListingName(
            value,
            showRequiredErrors: widget.showRequiredErrors,
          ),
          decoration: fieldDecoration.copyWith(hintText: 'Enter your name'),
        ),
        SizedBox(height: context.spaceSmall),
        _ListingPublishingFieldLabel(title: 'Mobile phone'),
        SizedBox(height: context.spaceSmall),
        TextFormField(
          controller: _phoneController,
          maxLines: 1,
          keyboardType: TextInputType.phone,
          textInputAction: TextInputAction.done,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: (v) => ref
              .read(tempListingDraftHolderProvider.notifier)
              .update((l) => l.copyWith(phoneNumber: v)),
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(8),
          ],
          validator: (value) => validateListingPhone(
            value,
            showRequiredErrors: widget.showRequiredErrors,
          ),
          decoration: fieldDecoration.copyWith(
            hintText: '70 123 456',
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: context.paddingMedium),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('🇱🇧', style: Theme.of(context).textTheme.bodyLarge),
                  SizedBox(width: context.paddingSmall * 0.75),
                  Text(
                    '+961 |',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: scheme.onSurface,
                    ),
                  ),
                ],
              ),
            ),
            prefixIconConstraints: BoxConstraints(
              minWidth: context.screenWidth * 0.24,
            ),
          ),
        ),
        SizedBox(height: context.spaceSmall),
        _ListingPublishingFieldLabel(title: 'Contact method'),
        SizedBox(height: context.spaceSmall),
        ListingContactMethodField(
          value: draft.contactMethod,
          onChanged: (v) => ref
              .read(tempListingDraftHolderProvider.notifier)
              .update((l) => l.copyWith(contactMethod: v ?? l.contactMethod)),
          showRequiredErrors: widget.showRequiredErrors,
        ),
      ],
    );
  }
}

class _ListingPublishingFieldLabel extends StatelessWidget {
  const _ListingPublishingFieldLabel({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Text(
      title,
      style: Theme.of(context).textTheme.titleSmall?.copyWith(
        fontWeight: FontWeight.w700,
        color: scheme.onSurface,
      ),
    );
  }
}

class _ListingUsdPriceField extends StatelessWidget {
  const _ListingUsdPriceField({
    required this.controller,
    required this.pageBg,
    required this.showRequiredErrors,
    required this.onChanged,
  });

  final TextEditingController controller;
  final Color pageBg;
  final bool showRequiredErrors;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final radius = BorderRadius.circular(5);
    final inactiveColor = scheme.brightness == Brightness.light
        ? Colors.black
        : scheme.outline;
    final border = BorderSide(color: inactiveColor, width: 2);

    return TextFormField(
      controller: controller,
      maxLines: 1,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      textInputAction: TextInputAction.done,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: onChanged,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*$')),
        LengthLimitingTextInputFormatter(12),
      ],
      validator: (value) =>
          validateListingPrice(value, showRequiredErrors: showRequiredErrors),
      decoration: InputDecoration(
        filled: true,
        fillColor: pageBg,
        hintText: 'Enter price',
        isDense: true,
        contentPadding: EdgeInsets.symmetric(
          horizontal: context.paddingMedium,
          vertical: context.spaceSmall * 1.35,
        ),
        prefixIcon: Container(
          width: context.screenWidth * 0.16,
          alignment: Alignment.center,
          child: Text(
            'USD',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w700,
              color: scheme.onSurface,
            ),
          ),
        ),
        prefixIconConstraints: BoxConstraints(
          minWidth: context.screenWidth * 0.16,
        ),
        border: OutlineInputBorder(borderRadius: radius, borderSide: border),
        enabledBorder: OutlineInputBorder(
          borderRadius: radius,
          borderSide: border,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: radius,
          borderSide: BorderSide(color: scheme.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: radius,
          borderSide: BorderSide(color: scheme.error, width: 2),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: radius,
          borderSide: BorderSide(color: scheme.error, width: 2),
        ),
      ),
    );
  }
}
