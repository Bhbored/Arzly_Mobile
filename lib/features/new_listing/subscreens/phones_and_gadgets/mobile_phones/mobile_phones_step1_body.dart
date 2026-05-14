import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/phone_brand.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/phone_color.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/phone_condition.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/phone_storage.dart';
import 'package:arzly/data/providers/new_listing/temp_phones_gadgets_draft/temp_phones_gadgets_draft_holder.dart';
import 'package:arzly/features/new_listing/shared/inputs/car_picker_search_decoration.dart';
import 'package:arzly/features/new_listing/subscreens/phones_and_gadgets/mobile_phones/phone_brand_picker_page.dart';
import 'package:arzly/features/new_listing/subscreens/real_estate/houses_for_sale/houses_for_sale_single_select_chips.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/shared/cars_for_sale_style_dropdown_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MobilePhonesStep1Body extends ConsumerStatefulWidget {
  const MobilePhonesStep1Body({
    super.key,
    required this.formKey,
    required this.requireFieldErrors,
  });

  final GlobalKey<FormState> formKey;
  final bool requireFieldErrors;

  @override
  ConsumerState<MobilePhonesStep1Body> createState() =>
      _MobilePhonesStep1BodyState();
}

class _MobilePhonesStep1BodyState extends ConsumerState<MobilePhonesStep1Body> {
  Future<void> _openBrandPicker() async {
    final picked = await Navigator.of(context).push<PhoneBrand?>(
      createPhoneBrandPickerRoute(),
    );
    if (picked != null && mounted) {
      ref.read(tempPhonesGadgetsDraftHolderProvider.notifier).update(
            (d) => d.copyWith(phoneBrand: picked),
          );
    }
  }

  List<DropdownMenuItem<PhoneColor>> _colorMenuItems(ColorScheme scheme) {
    return [
      for (final c in PhoneColor.values)
        DropdownMenuItem(
          value: c,
          child: Row(
            children: [
              Container(
                width: 22,
                height: 22,
                decoration: BoxDecoration(
                  color: c.swatchColor,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: scheme.outline.withValues(alpha: 0.45),
                  ),
                ),
              ),
              SizedBox(width: context.paddingSmall),
              Expanded(
                child: Text(
                  c.label,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ],
          ),
        ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final details = ref.watch(tempPhonesGadgetsDraftHolderProvider);
    final scheme = Theme.of(context).colorScheme;
    final pageBg = scheme.surfaceContainerLowest;
    final menuRadius = BorderRadius.circular(context.borderRadiusMedium);
    final fieldsResetKey =
        Object.hash(details.phoneBrand, details.phoneCondition);
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
                Text('Brand', style: titleStyle),
                SizedBox(height: context.spaceSmall),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: _openBrandPicker,
                    borderRadius: BorderRadius.circular(5),
                    child: InputDecorator(
                      decoration: fieldDecoration,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              details.phoneBrand?.label ?? 'Choose brand',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    color: details.phoneBrand == null
                                        ? scheme.onSurfaceVariant
                                        : scheme.onSurface,
                                    fontWeight: FontWeight.w600,
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
                if (widget.requireFieldErrors && details.phoneBrand == null)
                  Padding(
                    padding: EdgeInsets.only(top: context.spaceSmall * 0.5),
                    child: Text(
                      'Choose brand',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: scheme.error,
                          ),
                    ),
                  ),
              ],
            ),
            SizedBox(height: context.spaceSmall),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Condition', style: titleStyle),
                SizedBox(height: context.spaceSmall),
                HousesForSaleSingleSelectChips<PhoneCondition>(
                  values: PhoneCondition.values,
                  selected: details.phoneCondition,
                  labelOf: (v) => v.label,
                  onChanged: (v) => ref
                      .read(tempPhonesGadgetsDraftHolderProvider.notifier)
                      .update((d) => d.copyWith(phoneCondition: v)),
                ),
                if (widget.requireFieldErrors && details.phoneCondition == null)
                  Padding(
                    padding: EdgeInsets.only(top: context.spaceSmall * 0.5),
                    child: Text(
                      'Choose condition',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: scheme.error,
                          ),
                    ),
                  ),
              ],
            ),
            SizedBox(height: context.spaceSmall),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Storage', style: titleStyle),
                SizedBox(height: context.spaceSmall),
                CarsForSaleStyleDropdownField<PhoneStorage>(
                  fieldsResetKey: fieldsResetKey,
                  fieldSuffix: 'storage',
                  value: details.storage,
                  onChanged: (v) => ref
                      .read(tempPhonesGadgetsDraftHolderProvider.notifier)
                      .update((d) => d.copyWith(storage: v)),
                  hintText: 'Choose storage',
                  validationMessage: 'Choose storage',
                  showRequiredErrors: widget.requireFieldErrors,
                  pageBg: pageBg,
                  scheme: scheme,
                  menuRadius: menuRadius,
                  items: [
                    for (final s in PhoneStorage.values)
                      DropdownMenuItem(value: s, child: Text(s.label)),
                  ],
                ),
              ],
            ),
            SizedBox(height: context.spaceSmall),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Color', style: titleStyle),
                SizedBox(height: context.spaceSmall),
                CarsForSaleStyleDropdownField<PhoneColor>(
                  fieldsResetKey: fieldsResetKey,
                  fieldSuffix: 'color',
                  value: details.color,
                  onChanged: (v) => ref
                      .read(tempPhonesGadgetsDraftHolderProvider.notifier)
                      .update((d) => d.copyWith(color: v)),
                  hintText: 'Choose color',
                  validationMessage: 'Choose color',
                  showRequiredErrors: widget.requireFieldErrors,
                  pageBg: pageBg,
                  scheme: scheme,
                  menuRadius: menuRadius,
                  items: _colorMenuItems(scheme),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
