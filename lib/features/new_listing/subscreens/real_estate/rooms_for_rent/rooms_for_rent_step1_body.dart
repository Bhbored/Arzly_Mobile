import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/floor_level.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/furnished_status.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/room_feature.dart';
import 'package:arzly/core/utils/room_features_helper.dart';
import 'package:arzly/data/providers/new_listing/temp_real_estate_draft/temp_real_estate_draft_holder.dart';
import 'package:arzly/features/new_listing/shared/inputs/car_picker_search_decoration.dart';
import 'package:arzly/features/new_listing/subscreens/real_estate/houses_for_sale/houses_for_sale_size_m2_input_formatter.dart';
import 'package:arzly/features/new_listing/subscreens/real_estate/rooms_for_rent/room_features_selector_page.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/shared/cars_for_sale_style_dropdown_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

double? parseRoomsForRentSizeM2Field(String raw) {
  final v = raw.trim().replaceAll(',', '.');
  if (v.isEmpty) return null;
  final d = double.tryParse(v);
  if (d == null || d <= 0 || d > HousesForSaleSizeM2InputFormatter.maxM2) {
    return null;
  }
  return d;
}

class RoomsForRentStep1Body extends ConsumerStatefulWidget {
  const RoomsForRentStep1Body({
    super.key,
    required this.formKey,
    required this.requireFieldErrors,
  });

  final GlobalKey<FormState> formKey;
  final bool requireFieldErrors;

  @override
  ConsumerState<RoomsForRentStep1Body> createState() =>
      _RoomsForRentStep1BodyState();
}

class _RoomsForRentStep1BodyState extends ConsumerState<RoomsForRentStep1Body> {
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
              size: parseRoomsForRentSizeM2Field(_sizeController.text),
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
    final current = ref.read(tempRealEstateDraftHolderProvider).roomFeatures;
    final picked = await Navigator.of(context).push<List<RoomFeature>>(
      createRoomFeaturesSelectorRoute(
        initialSelection: List<RoomFeature>.from(current ?? const []),
      ),
    );
    if (picked != null && mounted) {
      ref
          .read(tempRealEstateDraftHolderProvider.notifier)
          .update(
            (d) => d.copyWith(roomFeatures: picked.isEmpty ? null : picked),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    final re = ref.watch(tempRealEstateDraftHolderProvider);
    final scheme = Theme.of(context).colorScheme;
    final pageBg = scheme.surfaceContainerLowest;
    final menuRadius = BorderRadius.circular(context.borderRadiusMedium);
    final fieldsResetKey = Object.hash(re.furnished, re.floor);
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
    final features = List<RoomFeature>.from(re.roomFeatures ?? const []);

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
                    if (parseRoomsForRentSizeM2Field(v) == null) {
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
                              formatRoomFeaturesSummary(features),
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
