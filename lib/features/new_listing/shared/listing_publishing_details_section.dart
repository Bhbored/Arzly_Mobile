import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/job_listing/contact_method.dart';
import 'package:arzly/domain/entities/pickup_location/pickup_location.dart';
import 'package:arzly/features/new_listing/shared/listing_contact_method_field.dart';
import 'package:arzly/features/new_listing/shared/listing_form_section_divider.dart';
import 'package:arzly/features/new_listing/shared/listing_pickup_location_field.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/car_picker_search_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

class ListingPublishingDetailsSection extends StatelessWidget {
  const ListingPublishingDetailsSection({
    super.key,
    required this.fieldsResetKey,
    required this.titleController,
    required this.descriptionController,
    required this.priceController,
    required this.nameController,
    required this.phoneController,
    required this.selectedPickupLocation,
    required this.onPickupLocationChanged,
    required this.selectedContactMethod,
    required this.onContactMethodChanged,
    required this.showRequiredErrors,
    required this.pageBg,
  });

  final Object? fieldsResetKey;
  final TextEditingController titleController;
  final TextEditingController descriptionController;
  final TextEditingController priceController;
  final TextEditingController nameController;
  final TextEditingController phoneController;
  final PickupLocation? selectedPickupLocation;
  final ValueChanged<PickupLocation?> onPickupLocationChanged;
  final ContactMethod? selectedContactMethod;
  final ValueChanged<ContactMethod?> onContactMethodChanged;
  final bool showRequiredErrors;
  final Color pageBg;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final fieldDecoration = carForSaleVersionFieldDecoration(
      context,
      pageBg,
      scheme,
      hintText: '',
    ).copyWith(isDense: true);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _ListingPublishingFieldLabel(title: 'Ad title'),
        SizedBox(height: context.spaceSmall),
        TextFormField(
          controller: titleController,
          maxLines: 1,
          textInputAction: TextInputAction.next,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) =>
              validateListingTitle(value, showRequiredErrors: showRequiredErrors),
          decoration: fieldDecoration.copyWith(
            hintText: 'Enter ad title',
          ),
        ),
        SizedBox(height: context.spaceSmall),
        _ListingPublishingFieldLabel(title: 'Description'),
        SizedBox(height: context.spaceSmall),
        TextFormField(
          controller: descriptionController,
          minLines: 3,
          maxLines: 5,
          keyboardType: TextInputType.multiline,
          textInputAction: TextInputAction.newline,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) => validateListingDescription(
            value,
            showRequiredErrors: showRequiredErrors,
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
          fieldsResetKey: fieldsResetKey,
          value: selectedPickupLocation,
          onChanged: onPickupLocationChanged,
          showRequiredErrors: showRequiredErrors,
          pageBg: pageBg,
        ),
        SizedBox(height: context.spaceSmall),
        _ListingPublishingFieldLabel(title: 'Price'),
        SizedBox(height: context.spaceSmall),
        _ListingUsdPriceField(
          controller: priceController,
          pageBg: pageBg,
          showRequiredErrors: showRequiredErrors,
        ),
        const ListingFormSectionDivider(),
        _ListingPublishingFieldLabel(title: 'Your name'),
        SizedBox(height: context.spaceSmall),
        TextFormField(
          controller: nameController,
          maxLines: 1,
          textInputAction: TextInputAction.next,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) =>
              validateListingName(value, showRequiredErrors: showRequiredErrors),
          decoration: fieldDecoration.copyWith(
            hintText: 'Enter your name',
          ),
        ),
        SizedBox(height: context.spaceSmall),
        _ListingPublishingFieldLabel(title: 'Mobile phone'),
        SizedBox(height: context.spaceSmall),
        TextFormField(
          controller: phoneController,
          maxLines: 1,
          keyboardType: TextInputType.phone,
          textInputAction: TextInputAction.done,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(8),
          ],
          validator: (value) =>
              validateListingPhone(value, showRequiredErrors: showRequiredErrors),
          decoration: fieldDecoration.copyWith(
            hintText: '70 123 456',
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: context.paddingMedium),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '🇱🇧',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
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
          value: selectedContactMethod,
          onChanged: onContactMethodChanged,
          showRequiredErrors: showRequiredErrors,
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
  });

  final TextEditingController controller;
  final Color pageBg;
  final bool showRequiredErrors;

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
