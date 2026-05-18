import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/bedrooms.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/chalet_type.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/commercial_type.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/floor_level.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/furnished_status.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/land_type.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/ownership_type.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/property_age.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/property_condition.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/property_type.dart';
import 'package:arzly/domain/entities/listing/real_estate_details/real_estate_details.dart';
import 'package:arzly/features/listings/listings_by_subcategory/filters/shared/browse_filter_shell.dart';
import 'package:arzly/features/listings/listings_by_subcategory/filters/shared/subcategory_filter_fields.dart';
import 'package:arzly/features/new_listing/subscreens/real_estate/houses_for_sale/houses_for_sale_size_m2_input_formatter.dart';
import 'package:arzly/features/new_listing/subscreens/real_estate/widgets/real_estate_subcategory_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Route<RealEstateDetails?> createRealEstateSubcategoryFilterRoute({
  required String subcategoryName,
  RealEstateDetails? initialDetails,
}) {
  return PageRouteBuilder<RealEstateDetails?>(
    opaque: true,
    fullscreenDialog: true,
    transitionDuration: const Duration(milliseconds: 320),
    reverseTransitionDuration: const Duration(milliseconds: 280),
    pageBuilder: (context, animation, secondaryAnimation) {
      return RealEstateSubcategoryFilterScreen(
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

Future<RealEstateDetails?> openRealEstateSubcategoryFilter(
  BuildContext context, {
  required String subcategoryName,
  RealEstateDetails? initialDetails,
}) {
  return Navigator.of(context).push<RealEstateDetails?>(
    createRealEstateSubcategoryFilterRoute(
      subcategoryName: subcategoryName,
      initialDetails: initialDetails,
    ),
  );
}

class RealEstateSubcategoryFilterScreen extends StatefulWidget {
  const RealEstateSubcategoryFilterScreen({
    super.key,
    required this.subcategoryName,
    this.initialDetails,
  });

  final String subcategoryName;
  final RealEstateDetails? initialDetails;

  @override
  State<RealEstateSubcategoryFilterScreen> createState() =>
      _RealEstateSubcategoryFilterScreenState();
}

class _RealEstateSubcategoryFilterScreenState
    extends State<RealEstateSubcategoryFilterScreen> {
  late RealEstateDetails _details;
  late final TextEditingController? _bathroomsController;
  late final TextEditingController? _sizeController;

  String get _subcategoryName => widget.subcategoryName.trim();

  bool get _isHouses =>
      _subcategoryName == RealEstateSubcategoryBody.housesForSale ||
      _subcategoryName == RealEstateSubcategoryBody.housesForRent;

  bool get _isLand =>
      _subcategoryName == RealEstateSubcategoryBody.landForSale ||
      _subcategoryName == RealEstateSubcategoryBody.landForRent;

  bool get _isCommercial =>
      _subcategoryName == RealEstateSubcategoryBody.commercialsForSale ||
      _subcategoryName == RealEstateSubcategoryBody.commercialsForRent;

  bool get _isChalet =>
      _subcategoryName == RealEstateSubcategoryBody.chaletsCabinsForSale ||
      _subcategoryName == RealEstateSubcategoryBody.chaletsCabinsForRent;

  bool get _isRooms => _subcategoryName == RealEstateSubcategoryBody.roomsForRent;

  @override
  void initState() {
    super.initState();
    _details = widget.initialDetails ?? const RealEstateDetails();
    if (_isHouses || _isChalet) {
      _bathroomsController = TextEditingController(
        text: _details.bathrooms?.toString() ?? '',
      );
    } else {
      _bathroomsController = null;
    }
    if (_isHouses || _isLand || _isCommercial || _isChalet || _isRooms) {
      _sizeController = TextEditingController(
        text: _details.size?.toString() ?? '',
      );
    } else {
      _sizeController = null;
    }
  }

  @override
  void dispose() {
    _bathroomsController?.dispose();
    _sizeController?.dispose();
    super.dispose();
  }

  RealEstateDetails _buildDetails() {
    final bathroomsController = _bathroomsController;
    final sizeController = _sizeController;
    return _details.copyWith(
      bathrooms: bathroomsController == null
          ? _details.bathrooms
          : parseSubcategoryFilterBathrooms(bathroomsController.text),
      size: sizeController == null
          ? _details.size
          : parseSubcategoryFilterSizeM2(sizeController.text),
    );
  }

  void _clearAll() {
    setState(() {
      _details = const RealEstateDetails();
      _bathroomsController?.clear();
      _sizeController?.clear();
    });
  }

  Widget _sectionGap() => SizedBox(height: context.spaceMedium);

  Widget _housesFields() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SubcategoryFilterDropdownSection<PropertyType>(
          title: 'Property type',
          resetKey: _details.propertyType,
          fieldSuffix: 'propertyType',
          value: _details.propertyType,
          hintText: 'Any type',
          values: PropertyType.values,
          labelBuilder: (v) => v.label,
          onChanged: (v) =>
              setState(() => _details = _details.copyWith(propertyType: v)),
        ),
        _sectionGap(),
        SubcategoryFilterChipsSection<OwnershipType>(
          title: 'Ownership',
          values: OwnershipType.values,
          selected: _details.ownership,
          labelOf: (v) => v.label,
          onChanged: (v) =>
              setState(() => _details = _details.copyWith(ownership: v)),
        ),
        _sectionGap(),
        SubcategoryFilterDropdownSection<Bedrooms>(
          title: 'Bedrooms',
          resetKey: _details.bedrooms,
          fieldSuffix: 'bedrooms',
          value: _details.bedrooms,
          hintText: 'Any',
          values: kBedroomsWithoutSuggest,
          labelBuilder: (v) => v.label,
          onChanged: (v) =>
              setState(() => _details = _details.copyWith(bedrooms: v)),
        ),
        _sectionGap(),
        SubcategoryFilterTextFieldSection(
          title: 'Bathrooms',
          controller: _bathroomsController!,
          hintText: '0–13',
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(2),
          ],
        ),
        _sectionGap(),
        SubcategoryFilterTextFieldSection(
          title: 'Size [m²]',
          controller: _sizeController!,
          hintText: 'Area in m²',
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          inputFormatters: [HousesForSaleSizeM2InputFormatter()],
        ),
        _sectionGap(),
        SubcategoryFilterDropdownSection<FurnishedStatus>(
          title: 'Furnished',
          resetKey: _details.furnished,
          fieldSuffix: 'furnished',
          value: _details.furnished,
          hintText: 'Any',
          values: FurnishedStatus.values,
          labelBuilder: (v) => v.label,
          onChanged: (v) =>
              setState(() => _details = _details.copyWith(furnished: v)),
        ),
        _sectionGap(),
        SubcategoryFilterChipsSection<PropertyCondition>(
          title: 'Condition',
          values: PropertyCondition.values,
          selected: _details.condition,
          labelOf: (v) => v.label,
          onChanged: (v) =>
              setState(() => _details = _details.copyWith(condition: v)),
        ),
        _sectionGap(),
        SubcategoryFilterDropdownSection<FloorLevel>(
          title: 'Floor',
          resetKey: _details.floor,
          fieldSuffix: 'floor',
          value: _details.floor,
          hintText: 'Any floor',
          values: FloorLevel.values,
          labelBuilder: (v) => v.label,
          onChanged: (v) =>
              setState(() => _details = _details.copyWith(floor: v)),
        ),
        _sectionGap(),
        SubcategoryFilterChipsSection<PropertyAge>(
          title: 'Property age',
          values: PropertyAge.values,
          selected: _details.propertyAge,
          labelOf: (v) => v.label,
          onChanged: (v) =>
              setState(() => _details = _details.copyWith(propertyAge: v)),
        ),
      ],
    );
  }

  Widget _landFields() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SubcategoryFilterDropdownSection<LandType>(
          title: 'Land type',
          resetKey: _details.landType,
          fieldSuffix: 'landType',
          value: _details.landType,
          hintText: 'Any type',
          values: LandType.values,
          labelBuilder: (v) => v.label,
          onChanged: (v) =>
              setState(() => _details = _details.copyWith(landType: v)),
        ),
        _sectionGap(),
        SubcategoryFilterTextFieldSection(
          title: 'Size [m²]',
          controller: _sizeController!,
          hintText: 'Area in m²',
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          inputFormatters: [HousesForSaleSizeM2InputFormatter()],
        ),
      ],
    );
  }

  Widget _commercialFields() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SubcategoryFilterChipsSection<OwnershipType>(
          title: 'Ownership',
          values: OwnershipType.values,
          selected: _details.ownership,
          labelOf: (v) => v.label,
          onChanged: (v) =>
              setState(() => _details = _details.copyWith(ownership: v)),
        ),
        _sectionGap(),
        SubcategoryFilterDropdownSection<CommercialType>(
          title: 'Commercial type',
          resetKey: _details.commercialType,
          fieldSuffix: 'commercialType',
          value: _details.commercialType,
          hintText: 'Any type',
          values: CommercialType.values,
          labelBuilder: (v) => v.label,
          onChanged: (v) =>
              setState(() => _details = _details.copyWith(commercialType: v)),
        ),
        _sectionGap(),
        SubcategoryFilterTextFieldSection(
          title: 'Size [m²]',
          controller: _sizeController!,
          hintText: 'Area in m²',
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          inputFormatters: [HousesForSaleSizeM2InputFormatter()],
        ),
        _sectionGap(),
        SubcategoryFilterDropdownSection<FloorLevel>(
          title: 'Floor',
          resetKey: _details.floor,
          fieldSuffix: 'floor',
          value: _details.floor,
          hintText: 'Any floor',
          values: FloorLevel.values,
          labelBuilder: (v) => v.label,
          onChanged: (v) =>
              setState(() => _details = _details.copyWith(floor: v)),
        ),
        _sectionGap(),
        SubcategoryFilterEquippedSection(
          value: _details.equipped,
          onChanged: (v) =>
              setState(() => _details = _details.copyWith(equipped: v)),
        ),
        _sectionGap(),
        SubcategoryFilterChipsSection<PropertyCondition>(
          title: 'Condition',
          values: PropertyCondition.values,
          selected: _details.condition,
          labelOf: (v) => v.label,
          onChanged: (v) =>
              setState(() => _details = _details.copyWith(condition: v)),
        ),
        _sectionGap(),
        SubcategoryFilterChipsSection<PropertyAge>(
          title: 'Property age',
          values: PropertyAge.values,
          selected: _details.propertyAge,
          labelOf: (v) => v.label,
          onChanged: (v) =>
              setState(() => _details = _details.copyWith(propertyAge: v)),
        ),
      ],
    );
  }

  Widget _chaletFields() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SubcategoryFilterChipsSection<ChaletType>(
          title: 'Chalet type',
          values: ChaletType.values,
          selected: _details.chaletType,
          labelOf: (v) => v.label,
          onChanged: (v) =>
              setState(() => _details = _details.copyWith(chaletType: v)),
        ),
        _sectionGap(),
        SubcategoryFilterChipsSection<OwnershipType>(
          title: 'Ownership',
          values: OwnershipType.values,
          selected: _details.ownership,
          labelOf: (v) => v.label,
          onChanged: (v) =>
              setState(() => _details = _details.copyWith(ownership: v)),
        ),
        _sectionGap(),
        SubcategoryFilterDropdownSection<Bedrooms>(
          title: 'Bedrooms',
          resetKey: _details.bedrooms,
          fieldSuffix: 'bedrooms',
          value: _details.bedrooms,
          hintText: 'Any',
          values: kBedroomsWithoutSuggest,
          labelBuilder: (v) => v.label,
          onChanged: (v) =>
              setState(() => _details = _details.copyWith(bedrooms: v)),
        ),
        _sectionGap(),
        SubcategoryFilterTextFieldSection(
          title: 'Bathrooms',
          controller: _bathroomsController!,
          hintText: '0–13',
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(2),
          ],
        ),
        _sectionGap(),
        SubcategoryFilterTextFieldSection(
          title: 'Size [m²]',
          controller: _sizeController!,
          hintText: 'Area in m²',
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          inputFormatters: [HousesForSaleSizeM2InputFormatter()],
        ),
        _sectionGap(),
        SubcategoryFilterDropdownSection<FloorLevel>(
          title: 'Floor',
          resetKey: _details.floor,
          fieldSuffix: 'floor',
          value: _details.floor,
          hintText: 'Any floor',
          values: FloorLevel.values,
          labelBuilder: (v) => v.label,
          onChanged: (v) =>
              setState(() => _details = _details.copyWith(floor: v)),
        ),
        _sectionGap(),
        SubcategoryFilterChipsSection<PropertyAge>(
          title: 'Property age',
          values: PropertyAge.values,
          selected: _details.propertyAge,
          labelOf: (v) => v.label,
          onChanged: (v) =>
              setState(() => _details = _details.copyWith(propertyAge: v)),
        ),
      ],
    );
  }

  Widget _roomsFields() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SubcategoryFilterTextFieldSection(
          title: 'Size [m²]',
          controller: _sizeController!,
          hintText: 'Area in m²',
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          inputFormatters: [HousesForSaleSizeM2InputFormatter()],
        ),
        _sectionGap(),
        SubcategoryFilterDropdownSection<FurnishedStatus>(
          title: 'Furnished',
          resetKey: _details.furnished,
          fieldSuffix: 'furnished',
          value: _details.furnished,
          hintText: 'Any',
          values: FurnishedStatus.values,
          labelBuilder: (v) => v.label,
          onChanged: (v) =>
              setState(() => _details = _details.copyWith(furnished: v)),
        ),
        _sectionGap(),
        SubcategoryFilterDropdownSection<FloorLevel>(
          title: 'Floor',
          resetKey: _details.floor,
          fieldSuffix: 'floor',
          value: _details.floor,
          hintText: 'Any floor',
          values: FloorLevel.values,
          labelBuilder: (v) => v.label,
          onChanged: (v) =>
              setState(() => _details = _details.copyWith(floor: v)),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return switch (_subcategoryName) {
      RealEstateSubcategoryBody.housesForSale ||
      RealEstateSubcategoryBody.housesForRent =>
        _housesFields(),
      RealEstateSubcategoryBody.landForSale ||
      RealEstateSubcategoryBody.landForRent =>
        _landFields(),
      RealEstateSubcategoryBody.commercialsForSale ||
      RealEstateSubcategoryBody.commercialsForRent =>
        _commercialFields(),
      RealEstateSubcategoryBody.chaletsCabinsForSale ||
      RealEstateSubcategoryBody.chaletsCabinsForRent =>
        _chaletFields(),
      RealEstateSubcategoryBody.roomsForRent => _roomsFields(),
      _ => const Text('No filters available for this subcategory yet.'),
    };
  }

  @override
  Widget build(BuildContext context) {
    return BrowseFilterShell(
      title: _subcategoryName,
      onClearAll: _clearAll,
      onApply: () => Navigator.of(context).pop(_buildDetails()),
      children: [_buildBody()],
    );
  }
}
