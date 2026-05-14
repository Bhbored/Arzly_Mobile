import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/commercial_feature.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/commercial_type.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/floor_level.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/ownership_type.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/property_age.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/property_condition.dart';
import 'package:arzly/core/utils/commercial_features_helper.dart';
import 'package:arzly/data/providers/new_listing/temp_real_estate_draft/temp_real_estate_draft_holder.dart';
import 'package:arzly/features/new_listing/shared/inputs/car_picker_search_decoration.dart';
import 'package:arzly/features/new_listing/subscreens/real_estate/commercials/commercial_features_selector_page.dart';
import 'package:arzly/features/new_listing/subscreens/real_estate/houses_for_sale/houses_for_sale_single_select_chips.dart';
import 'package:arzly/features/new_listing/subscreens/real_estate/houses_for_sale/houses_for_sale_size_m2_input_formatter.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/shared/cars_for_sale_style_dropdown_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

double? parseCommercialListingSizeM2Field(String raw) {
  final v = raw.trim().replaceAll(',', '.');
  if (v.isEmpty) return null;
  final d = double.tryParse(v);
  if (d == null || d <= 0 || d > HousesForSaleSizeM2InputFormatter.maxM2) {
    return null;
  }
  return d;
}

class CommercialListingStep1Body extends ConsumerStatefulWidget {
  const CommercialListingStep1Body({
    super.key,
    required this.formKey,
    required this.requireFieldErrors,
  });

  final GlobalKey<FormState> formKey;
  final bool requireFieldErrors;

  @override
  ConsumerState<CommercialListingStep1Body> createState() =>
      _CommercialListingStep1BodyState();
}

class _CommercialListingStep1BodyState
    extends ConsumerState<CommercialListingStep1Body> {
  late final TextEditingController _sizeController;
  late final TextEditingController _referenceIdController;

  @override
  void initState() {
    super.initState();
    final re = ref.read(tempRealEstateDraftHolderProvider);
    _sizeController = TextEditingController(
      text: re.size != null ? _sizeText(re.size!) : '',
    );
    _referenceIdController = TextEditingController(text: re.referenceId ?? '');
    _sizeController.addListener(() {
      ref
          .read(tempRealEstateDraftHolderProvider.notifier)
          .update(
            (d) => d.copyWith(
              size: parseCommercialListingSizeM2Field(_sizeController.text),
            ),
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
    _sizeController.dispose();
    _referenceIdController.dispose();
    super.dispose();
  }

  Future<void> _openFeatures() async {
    final current = ref
        .read(tempRealEstateDraftHolderProvider)
        .commercialFeatures;
    final picked = await Navigator.of(context).push<List<CommercialFeature>>(
      createCommercialFeaturesSelectorRoute(
        initialSelection: List<CommercialFeature>.from(current ?? const []),
      ),
    );
    if (picked != null && mounted) {
      ref
          .read(tempRealEstateDraftHolderProvider.notifier)
          .update(
            (d) =>
                d.copyWith(commercialFeatures: picked.isEmpty ? null : picked),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    final re = ref.watch(tempRealEstateDraftHolderProvider);
    final scheme = Theme.of(context).colorScheme;
    final pageBg = scheme.surfaceContainerLowest;
    final menuRadius = BorderRadius.circular(context.borderRadiusMedium);
    final fieldsResetKey = Object.hash(
      re.ownership,
      re.commercialType,
      re.floor,
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
    final features = List<CommercialFeature>.from(
      re.commercialFeatures ?? const [],
    );

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
                    if (parseCommercialListingSizeM2Field(v) == null) {
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
                Text('Commercial Type', style: titleStyle),
                SizedBox(height: context.spaceSmall),
                CarsForSaleStyleDropdownField<CommercialType>(
                  fieldsResetKey: fieldsResetKey,
                  fieldSuffix: 'commercial_type',
                  value: re.commercialType,
                  onChanged: (v) => ref
                      .read(tempRealEstateDraftHolderProvider.notifier)
                      .update((d) => d.copyWith(commercialType: v)),
                  hintText: 'Choose commercial type',
                  validationMessage: 'Choose commercial type',
                  showRequiredErrors: widget.requireFieldErrors,
                  pageBg: pageBg,
                  scheme: scheme,
                  menuRadius: menuRadius,
                  items: [
                    for (final t in CommercialType.values)
                      DropdownMenuItem(value: t, child: Text(t.label)),
                  ],
                ),
              ],
            ),
            SizedBox(height: context.spaceSmall),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: Text('Equipped', style: titleStyle)),
                Switch(
                  value: re.equipped ?? false,
                  onChanged: (v) => ref
                      .read(tempRealEstateDraftHolderProvider.notifier)
                      .update((d) => d.copyWith(equipped: v)),
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
                              formatCommercialFeaturesSummary(features),
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
