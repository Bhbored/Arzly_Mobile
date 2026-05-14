import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/apartment_feature.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/bedrooms.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/floor_level.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/furnished_status.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/ownership_type.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/property_age.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/property_condition.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/property_type.dart';
import 'package:arzly/data/providers/new_listing/temp_real_estate_draft/temp_real_estate_draft_holder.dart';
import 'package:arzly/features/new_listing/shared/form/listing_form_section_divider.dart';
import 'package:arzly/features/new_listing/shared/inputs/car_picker_search_decoration.dart';
import 'package:arzly/features/new_listing/subscreens/real_estate/houses_for_sale/apartment_features_selector_page.dart';
import 'package:arzly/core/utils/apartment_features_helper.dart';
import 'package:arzly/features/new_listing/subscreens/real_estate/houses_for_sale/houses_for_sale_single_select_chips.dart';
import 'package:arzly/features/new_listing/subscreens/real_estate/houses_for_sale/houses_for_sale_size_m2_input_formatter.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/shared/cars_for_sale_style_dropdown_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

int? parseHousesBathroomsField(String raw) {
  final v = raw.trim();
  if (v.isEmpty) return null;
  final i = int.tryParse(v);
  if (i == null || i < 0 || i > 13) return null;
  return i;
}

double? parseHousesSizeM2Field(String raw) {
  final v = raw.trim().replaceAll(',', '.');
  if (v.isEmpty) return null;
  final d = double.tryParse(v);
  if (d == null || d <= 0 || d > HousesForSaleSizeM2InputFormatter.maxM2) {
    return null;
  }
  return d;
}

class HousesForRentStep1Body extends ConsumerStatefulWidget {
  const HousesForRentStep1Body({
    super.key,
    required this.formKey,
    required this.requireFieldErrors,
  });

  final GlobalKey<FormState> formKey;
  final bool requireFieldErrors;

  @override
  ConsumerState<HousesForRentStep1Body> createState() =>
      _HousesForRentStep1BodyState();
}

class _HousesForRentStep1BodyState
    extends ConsumerState<HousesForRentStep1Body> {
  late final TextEditingController _bathroomsController;
  late final TextEditingController _sizeController;
  late final TextEditingController _referenceIdController;

  @override
  void initState() {
    super.initState();
    final re = ref.read(tempRealEstateDraftHolderProvider);
    _bathroomsController = TextEditingController(
      text: re.bathrooms != null ? '${re.bathrooms}' : '',
    );
    _sizeController = TextEditingController(
      text: re.size != null ? _sizeText(re.size!) : '',
    );
    _referenceIdController = TextEditingController(text: re.referenceId ?? '');
    _bathroomsController.addListener(() {
      ref
          .read(tempRealEstateDraftHolderProvider.notifier)
          .update(
            (d) => d.copyWith(
              bathrooms: parseHousesBathroomsField(_bathroomsController.text),
            ),
          );
    });
    _sizeController.addListener(() {
      ref
          .read(tempRealEstateDraftHolderProvider.notifier)
          .update(
            (d) =>
                d.copyWith(size: parseHousesSizeM2Field(_sizeController.text)),
          );
    });
    _referenceIdController.addListener(() {
      final t = _referenceIdController.text.trim();
      ref
          .read(tempRealEstateDraftHolderProvider.notifier)
          .update((d) => d.copyWith(referenceId: t.isEmpty ? null : t));
    });
  }

  String _sizeText(double s) {
    if (s == s.roundToDouble()) return s.toInt().toString();
    return s.toString();
  }

  @override
  void dispose() {
    _bathroomsController.dispose();
    _sizeController.dispose();
    _referenceIdController.dispose();
    super.dispose();
  }

  Future<void> _openFeatures() async {
    final current = ref.read(tempRealEstateDraftHolderProvider).features;
    final picked = await Navigator.of(context).push<List<ApartmentFeature>>(
      createApartmentFeaturesSelectorRoute(
        initialSelection: List<ApartmentFeature>.from(current ?? const []),
      ),
    );
    if (picked != null && mounted) {
      ref
          .read(tempRealEstateDraftHolderProvider.notifier)
          .update((d) => d.copyWith(features: picked.isEmpty ? null : picked));
    }
  }

  @override
  Widget build(BuildContext context) {
    final re = ref.watch(tempRealEstateDraftHolderProvider);
    final scheme = Theme.of(context).colorScheme;
    final pageBg = scheme.surfaceContainerLowest;
    final menuRadius = BorderRadius.circular(context.borderRadiusMedium);
    final fieldsResetKey = Object.hash(
      re.propertyType,
      re.ownership,
      re.bedrooms,
    );
    final titleStyle = Theme.of(context).textTheme.titleSmall?.copyWith(
      fontWeight: FontWeight.w700,
      color: scheme.onSurface,
    );
    final fieldDecoration = carForSaleVersionFieldDecoration(
      context,
      pageBg,
      scheme,
      hintText: '',
    ).copyWith(isDense: true);
    final features = List<ApartmentFeature>.from(re.features ?? const []);

    return Form(
      key: widget.formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.paddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Property Type', style: titleStyle),
                SizedBox(height: context.spaceSmall),
                CarsForSaleStyleDropdownField<PropertyType>(
                  fieldsResetKey: fieldsResetKey,
                  fieldSuffix: 'property_type',
                  value: re.propertyType,
                  onChanged: (v) => ref
                      .read(tempRealEstateDraftHolderProvider.notifier)
                      .update((d) => d.copyWith(propertyType: v)),
                  hintText: 'Choose property type',
                  validationMessage: 'Choose property type',
                  showRequiredErrors: widget.requireFieldErrors,
                  pageBg: pageBg,
                  scheme: scheme,
                  menuRadius: menuRadius,
                  items: [
                    for (final t in PropertyType.values)
                      DropdownMenuItem(value: t, child: Text(t.label)),
                  ],
                ),
              ],
            ),
            SizedBox(height: context.spaceSmall),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Ownership', style: titleStyle),
                SizedBox(height: context.spaceSmall),
                HousesForSaleSingleSelectChips<OwnershipType>(
                  values: OwnershipType.values,
                  selected: re.ownership,
                  labelOf: (v) => v.label,
                  onChanged: (v) => ref
                      .read(tempRealEstateDraftHolderProvider.notifier)
                      .update((d) => d.copyWith(ownership: v)),
                ),
                if (widget.requireFieldErrors && re.ownership == null)
                  Padding(
                    padding: EdgeInsets.only(top: context.spaceSmall * 0.5),
                    child: Text(
                      'Choose ownership',
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall?.copyWith(color: scheme.error),
                    ),
                  ),
              ],
            ),
            const ListingFormSectionDivider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Bedrooms', style: titleStyle),
                SizedBox(height: context.spaceSmall),
                CarsForSaleStyleDropdownField<Bedrooms>(
                  fieldsResetKey: fieldsResetKey,
                  fieldSuffix: 'bedrooms',
                  value: re.bedrooms,
                  onChanged: (v) => ref
                      .read(tempRealEstateDraftHolderProvider.notifier)
                      .update((d) => d.copyWith(bedrooms: v)),
                  hintText: 'Choose bedrooms',
                  validationMessage: 'Choose bedrooms',
                  showRequiredErrors: widget.requireFieldErrors,
                  pageBg: pageBg,
                  scheme: scheme,
                  menuRadius: menuRadius,
                  items: [
                    for (final b in kBedroomsWithoutSuggest)
                      DropdownMenuItem(value: b, child: Text(b.label)),
                  ],
                ),
              ],
            ),
            SizedBox(height: context.spaceSmall),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Bathrooms', style: titleStyle),
                SizedBox(height: context.spaceSmall),
                TextFormField(
                  controller: _bathroomsController,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(2),
                  ],
                  autovalidateMode: widget.requireFieldErrors
                      ? AutovalidateMode.onUserInteraction
                      : AutovalidateMode.disabled,
                  validator: (raw) {
                    if (!widget.requireFieldErrors) return null;
                    final v = raw?.trim() ?? '';
                    if (v.isEmpty) return 'Enter bathrooms';
                    if (parseHousesBathroomsField(v) == null) {
                      return 'Whole number from 0 to 13';
                    }
                    return null;
                  },
                  decoration: fieldDecoration.copyWith(hintText: '0–13'),
                ),
              ],
            ),
            SizedBox(height: context.spaceSmall),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Size [m²]', style: titleStyle),
                SizedBox(height: context.spaceSmall),
                TextFormField(
                  controller: _sizeController,
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  inputFormatters: [HousesForSaleSizeM2InputFormatter()],
                  autovalidateMode: widget.requireFieldErrors
                      ? AutovalidateMode.onUserInteraction
                      : AutovalidateMode.disabled,
                  validator: (raw) {
                    if (!widget.requireFieldErrors) return null;
                    final v = raw?.trim() ?? '';
                    if (v.isEmpty) return 'Enter size';
                    if (parseHousesSizeM2Field(v) == null) {
                      return 'Greater than 0, up to 1,000,000 m²';
                    }
                    return null;
                  },
                  decoration: fieldDecoration.copyWith(
                    hintText: 'Up to 1,000,000 m²',
                  ),
                ),
              ],
            ),
            const ListingFormSectionDivider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Furnished', style: titleStyle),
                SizedBox(height: context.spaceSmall),
                CarsForSaleStyleDropdownField<FurnishedStatus>(
                  fieldsResetKey: fieldsResetKey,
                  fieldSuffix: 'furnished',
                  value: re.furnished,
                  onChanged: (v) => ref
                      .read(tempRealEstateDraftHolderProvider.notifier)
                      .update((d) => d.copyWith(furnished: v)),
                  hintText: 'Choose furnished status',
                  validationMessage: 'Choose furnished status',
                  showRequiredErrors: widget.requireFieldErrors,
                  pageBg: pageBg,
                  scheme: scheme,
                  menuRadius: menuRadius,
                  items: [
                    for (final f in FurnishedStatus.values)
                      DropdownMenuItem(value: f, child: Text(f.label)),
                  ],
                ),
              ],
            ),
            SizedBox(height: context.spaceSmall),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Property condition', style: titleStyle),
                SizedBox(height: context.spaceSmall),
                HousesForSaleSingleSelectChips<PropertyCondition>(
                  values: PropertyCondition.values,
                  selected: re.condition,
                  labelOf: (v) => v.label,
                  onChanged: (v) => ref
                      .read(tempRealEstateDraftHolderProvider.notifier)
                      .update((d) => d.copyWith(condition: v)),
                ),
                if (widget.requireFieldErrors && re.condition == null)
                  Padding(
                    padding: EdgeInsets.only(top: context.spaceSmall * 0.5),
                    child: Text(
                      'Choose property condition',
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall?.copyWith(color: scheme.error),
                    ),
                  ),
              ],
            ),
            SizedBox(height: context.spaceSmall),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Floor', style: titleStyle),
                SizedBox(height: context.spaceSmall),
                CarsForSaleStyleDropdownField<FloorLevel>(
                  fieldsResetKey: fieldsResetKey,
                  fieldSuffix: 'floor',
                  value: re.floor,
                  onChanged: (v) => ref
                      .read(tempRealEstateDraftHolderProvider.notifier)
                      .update((d) => d.copyWith(floor: v)),
                  hintText: 'Choose floor',
                  validationMessage: 'Choose floor',
                  showRequiredErrors: widget.requireFieldErrors,
                  pageBg: pageBg,
                  scheme: scheme,
                  menuRadius: menuRadius,
                  items: [
                    for (final f in FloorLevel.values)
                      DropdownMenuItem(value: f, child: Text(f.label)),
                  ],
                ),
              ],
            ),
            SizedBox(height: context.spaceSmall),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Features', style: titleStyle),
                SizedBox(height: context.spaceSmall),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: _openFeatures,
                    borderRadius: BorderRadius.circular(5),
                    child: InputDecorator(
                      decoration: carForSaleVersionFieldDecoration(
                        context,
                        pageBg,
                        scheme,
                        hintText: '',
                      ).copyWith(isDense: true),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              formatApartmentFeaturesSummary(features),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.bodyLarge
                                  ?.copyWith(
                                    color: features.isEmpty
                                        ? scheme.onSurfaceVariant
                                        : scheme.onSurface,
                                  ),
                            ),
                          ),
                          Icon(
                            Icons.chevron_right_rounded,
                            color: scheme.onSurfaceVariant,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: context.spaceSmall),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Property age', style: titleStyle),
                SizedBox(height: context.spaceSmall),
                HousesForSaleSingleSelectChips<PropertyAge>(
                  values: PropertyAge.values,
                  selected: re.propertyAge,
                  labelOf: (v) => v.label,
                  onChanged: (v) => ref
                      .read(tempRealEstateDraftHolderProvider.notifier)
                      .update((d) => d.copyWith(propertyAge: v)),
                ),
                if (widget.requireFieldErrors && re.propertyAge == null)
                  Padding(
                    padding: EdgeInsets.only(top: context.spaceSmall * 0.5),
                    child: Text(
                      'Choose property age',
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall?.copyWith(color: scheme.error),
                    ),
                  ),
              ],
            ),
            SizedBox(height: context.spaceSmall),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Reference id', style: titleStyle),
                SizedBox(height: context.spaceSmall),
                TextFormField(
                  controller: _referenceIdController,
                  maxLines: 1,
                  textInputAction: TextInputAction.done,
                  autovalidateMode: widget.requireFieldErrors
                      ? AutovalidateMode.onUserInteraction
                      : AutovalidateMode.disabled,
                  validator: (raw) {
                    if (!widget.requireFieldErrors) return null;
                    if ((raw?.trim() ?? '').isEmpty) {
                      return 'Enter reference id';
                    }
                    return null;
                  },
                  decoration: fieldDecoration.copyWith(
                    hintText: 'Reference id',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
