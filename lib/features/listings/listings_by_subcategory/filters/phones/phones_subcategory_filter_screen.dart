import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/accessory_brand.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/band_color.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/band_material.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/membership_type.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/mobile_accessory_type.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/mobile_operator.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/phone_brand.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/phone_color.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/phone_condition.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/phone_storage.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/watch_brand.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/watch_storage.dart';
import 'package:arzly/domain/entities/listing/phones_details/phones_details.dart';
import 'package:arzly/features/listings/listings_by_subcategory/filters/shared/browse_filter_shell.dart';
import 'package:arzly/features/listings/listings_by_subcategory/filters/shared/subcategory_filter_fields.dart';
import 'package:arzly/features/new_listing/subscreens/phones_and_gadgets/mobile_accessories/accessory_brand_picker_page.dart';
import 'package:arzly/features/new_listing/subscreens/phones_and_gadgets/mobile_phones/phone_brand_picker_page.dart';
import 'package:arzly/features/new_listing/subscreens/phones_and_gadgets/smart_watches/watch_brand_picker_page.dart';
import 'package:arzly/features/new_listing/subscreens/phones_and_gadgets/widgets/phones_and_gadgets_subcategory_body.dart';
import 'package:flutter/material.dart';

Route<PhonesDetails?> createPhonesSubcategoryFilterRoute({
  required String subcategoryName,
  PhonesDetails? initialDetails,
}) {
  return PageRouteBuilder<PhonesDetails?>(
    opaque: true,
    fullscreenDialog: true,
    transitionDuration: const Duration(milliseconds: 320),
    reverseTransitionDuration: const Duration(milliseconds: 280),
    pageBuilder: (context, animation, secondaryAnimation) {
      return PhonesSubcategoryFilterScreen(
        subcategoryName: subcategoryName,
        initialDetails: initialDetails,
      );
    },
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final curved = CurvedAnimation(
        parent: animation,
        curve: Curves.easeOutCubic,
        reverseCurve: Curves.easeInCubic,
      );
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, 1),
          end: Offset.zero,
        ).animate(curved),
        child: child,
      );
    },
  );
}

Future<PhonesDetails?> openPhonesSubcategoryFilter(
  BuildContext context, {
  required String subcategoryName,
  PhonesDetails? initialDetails,
}) {
  return Navigator.of(context).push<PhonesDetails?>(
    createPhonesSubcategoryFilterRoute(
      subcategoryName: subcategoryName,
      initialDetails: initialDetails,
    ),
  );
}

class PhonesSubcategoryFilterScreen extends StatefulWidget {
  const PhonesSubcategoryFilterScreen({
    super.key,
    required this.subcategoryName,
    this.initialDetails,
  });

  final String subcategoryName;
  final PhonesDetails? initialDetails;

  @override
  State<PhonesSubcategoryFilterScreen> createState() =>
      _PhonesSubcategoryFilterScreenState();
}

class _PhonesSubcategoryFilterScreenState
    extends State<PhonesSubcategoryFilterScreen> {
  late PhonesDetails _details;

  String get _subcategoryName => widget.subcategoryName.trim();

  @override
  void initState() {
    super.initState();
    _details = widget.initialDetails ?? const PhonesDetails();
  }

  void _clearAll() {
    setState(() => _details = const PhonesDetails());
  }

  Future<void> _pickPhoneBrand() async {
    final picked = await Navigator.of(context).push(
      createPhoneBrandPickerRoute(),
    );
    if (!mounted || picked == null) return;
    setState(() => _details = _details.copyWith(phoneBrand: picked));
  }

  Future<void> _pickAccessoryBrand() async {
    final picked = await Navigator.of(context).push(
      createAccessoryBrandPickerRoute(),
    );
    if (!mounted || picked == null) return;
    setState(() => _details = _details.copyWith(accessoryBrand: picked));
  }

  Future<void> _pickWatchBrand() async {
    final picked = await Navigator.of(context).push(
      createWatchBrandPickerRoute(),
    );
    if (!mounted || picked == null) return;
    setState(() => _details = _details.copyWith(watchBrand: picked));
  }

  Widget _sectionGap() => SizedBox(height: context.spaceMedium);

  Widget _mobilePhonesFields() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FilterNavRow(
          label: 'Brand',
          value: _details.phoneBrand?.label ?? 'Any',
          onTap: _pickPhoneBrand,
        ),
        _sectionGap(),
        SubcategoryFilterChipsSection<PhoneCondition>(
          title: 'Condition',
          values: PhoneCondition.values,
          selected: _details.phoneCondition,
          labelOf: (v) => v.label,
          onChanged: (v) =>
              setState(() => _details = _details.copyWith(phoneCondition: v)),
        ),
        _sectionGap(),
        SubcategoryFilterDropdownSection<PhoneStorage>(
          title: 'Storage',
          resetKey: _details.storage,
          fieldSuffix: 'storage',
          value: _details.storage,
          hintText: 'Any',
          values: PhoneStorage.values,
          labelBuilder: (v) => v.label,
          onChanged: (v) =>
              setState(() => _details = _details.copyWith(storage: v)),
        ),
        _sectionGap(),
        SubcategoryFilterDropdownSection<PhoneColor>(
          title: 'Color',
          resetKey: _details.color,
          fieldSuffix: 'color',
          value: _details.color,
          hintText: 'Any',
          values: PhoneColor.values,
          labelBuilder: (v) => v.label,
          onChanged: (v) =>
              setState(() => _details = _details.copyWith(color: v)),
        ),
      ],
    );
  }

  Widget _mobileAccessoriesFields() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FilterNavRow(
          label: 'Brand',
          value: _details.accessoryBrand?.label ?? 'Any',
          onTap: _pickAccessoryBrand,
        ),
        _sectionGap(),
        SubcategoryFilterDropdownSection<MobileAccessoryType>(
          title: 'Item type',
          resetKey: _details.accessoryItemType,
          fieldSuffix: 'accessoryItemType',
          value: _details.accessoryItemType,
          hintText: 'Any',
          values: MobileAccessoryType.values,
          labelBuilder: (v) => v.label,
          onChanged: (v) =>
              setState(() => _details = _details.copyWith(accessoryItemType: v)),
        ),
        _sectionGap(),
        SubcategoryFilterChipsSection<PhoneCondition>(
          title: 'Condition',
          values: PhoneCondition.values,
          selected: _details.phoneCondition,
          labelOf: (v) => v.label,
          onChanged: (v) =>
              setState(() => _details = _details.copyWith(phoneCondition: v)),
        ),
      ],
    );
  }

  Widget _mobileNumbersFields() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SubcategoryFilterChipsSection<MobileOperator>(
          title: 'Operator',
          values: MobileOperator.values,
          selected: _details.operator,
          labelOf: (v) => v.label,
          onChanged: (v) =>
              setState(() => _details = _details.copyWith(operator: v)),
        ),
        _sectionGap(),
        SubcategoryFilterChipsSection<MembershipType>(
          title: 'Membership type',
          values: MembershipType.values,
          selected: _details.membershipType,
          labelOf: (v) => v.label,
          onChanged: (v) =>
              setState(() => _details = _details.copyWith(membershipType: v)),
        ),
      ],
    );
  }

  Widget _smartWatchesFields() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FilterNavRow(
          label: 'Brand',
          value: _details.watchBrand?.label ?? 'Any',
          onTap: _pickWatchBrand,
        ),
        _sectionGap(),
        SubcategoryFilterChipsSection<PhoneCondition>(
          title: 'Condition',
          values: PhoneCondition.values,
          selected: _details.phoneCondition,
          labelOf: (v) => v.label,
          onChanged: (v) =>
              setState(() => _details = _details.copyWith(phoneCondition: v)),
        ),
        _sectionGap(),
        SubcategoryFilterDropdownSection<WatchStorage>(
          title: 'Storage',
          resetKey: _details.watchStorage,
          fieldSuffix: 'watchStorage',
          value: _details.watchStorage,
          hintText: 'Any',
          values: WatchStorage.values,
          labelBuilder: (v) => v.label,
          onChanged: (v) =>
              setState(() => _details = _details.copyWith(watchStorage: v)),
        ),
        _sectionGap(),
        SubcategoryFilterDropdownSection<BandMaterial>(
          title: 'Band material',
          resetKey: _details.bandMaterial,
          fieldSuffix: 'bandMaterial',
          value: _details.bandMaterial,
          hintText: 'Any',
          values: BandMaterial.values,
          labelBuilder: (v) => v.label,
          onChanged: (v) =>
              setState(() => _details = _details.copyWith(bandMaterial: v)),
        ),
        _sectionGap(),
        SubcategoryFilterDropdownSection<BandColor>(
          title: 'Band color',
          resetKey: _details.bandColor,
          fieldSuffix: 'bandColor',
          value: _details.bandColor,
          hintText: 'Any',
          values: BandColor.values,
          labelBuilder: (v) => v.label,
          onChanged: (v) =>
              setState(() => _details = _details.copyWith(bandColor: v)),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return switch (_subcategoryName) {
      PhonesAndGadgetsSubcategoryBody.mobilePhones => _mobilePhonesFields(),
      PhonesAndGadgetsSubcategoryBody.mobileAccessories =>
        _mobileAccessoriesFields(),
      PhonesAndGadgetsSubcategoryBody.mobileNumbers => _mobileNumbersFields(),
      PhonesAndGadgetsSubcategoryBody.smartWatches => _smartWatchesFields(),
      _ => const Text('No filters available for this subcategory yet.'),
    };
  }

  @override
  Widget build(BuildContext context) {
    return BrowseFilterShell(
      title: _subcategoryName,
      onClearAll: _clearAll,
      onApply: () => Navigator.of(context).pop(_details),
      children: [_buildBody()],
    );
  }
}
