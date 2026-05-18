import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/listing_owned/motors/accessory_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/boat_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/fuel_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/motorcycle_cc.dart';
import 'package:arzly/core/enums/listing_owned/motors/motorcycle_fuel_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/motorcycle_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/part_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/plate_digits.dart';
import 'package:arzly/core/enums/listing_owned/motors/transmission_type.dart';
import 'package:arzly/core/enums/listing_owned/motors/truck_brand.dart';
import 'package:arzly/core/enums/listing_owned/motors/vehicle_type.dart';
import 'package:arzly/domain/entities/listing/vehicles_details/vehicles_details.dart';
import 'package:arzly/features/listings/listings_by_subcategory/filters/shared/browse_enum_dropdown_field.dart';
import 'package:arzly/features/listings/listings_by_subcategory/filters/shared/browse_filter_shell.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/cars_for_sale/cars_for_sale_kilometers_field.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/cars_for_sale/cars_for_sale_year_field.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/pickers/car_brand_picker_page.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/pickers/car_model_picker_page.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/pickers/models/car_brand_selection.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/pickers/motorcycle_brand_picker_page.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/pickers/motorcycle_model_picker_page.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/trucks_buses/truck_brand_picker_page.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/widgets/shared/vehicle_condition_field.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/widgets/vehicles_subcategory_body.dart';
import 'package:flutter/material.dart';

Route<VehiclesDetails?> createVehiclesSubcategoryFilterRoute({
  required String subcategoryName,
  VehiclesDetails? initialDetails,
}) {
  return PageRouteBuilder<VehiclesDetails?>(
    opaque: true,
    fullscreenDialog: true,
    transitionDuration: const Duration(milliseconds: 320),
    reverseTransitionDuration: const Duration(milliseconds: 280),
    pageBuilder: (context, animation, secondaryAnimation) {
      return VehiclesSubcategoryFilterScreen(
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

Future<VehiclesDetails?> openVehiclesSubcategoryFilter(
  BuildContext context, {
  required String subcategoryName,
  VehiclesDetails? initialDetails,
}) {
  return Navigator.of(context).push<VehiclesDetails?>(
    createVehiclesSubcategoryFilterRoute(
      subcategoryName: subcategoryName,
      initialDetails: initialDetails,
    ),
  );
}

class VehiclesSubcategoryFilterScreen extends StatefulWidget {
  const VehiclesSubcategoryFilterScreen({
    super.key,
    required this.subcategoryName,
    this.initialDetails,
  });

  final String subcategoryName;
  final VehiclesDetails? initialDetails;

  @override
  State<VehiclesSubcategoryFilterScreen> createState() =>
      _VehiclesSubcategoryFilterScreenState();
}

class _VehiclesSubcategoryFilterScreenState
    extends State<VehiclesSubcategoryFilterScreen> {
  late VehiclesDetails _details;
  late final TextEditingController? _yearController;
  late final TextEditingController? _kmController;

  String get _subcategoryName => widget.subcategoryName.trim();

  bool get _usesYear => switch (_subcategoryName) {
        VehiclesSubcategoryBody.carsForSale ||
        VehiclesSubcategoryBody.motorcyclesAndAtvs ||
        VehiclesSubcategoryBody.trucksAndBuses ||
        VehiclesSubcategoryBody.boats =>
          true,
        _ => false,
      };

  bool get _usesKm => _subcategoryName == VehiclesSubcategoryBody.carsForSale;

  @override
  void initState() {
    super.initState();
    _details = widget.initialDetails ?? const VehiclesDetails();
    if (_usesYear) {
      _yearController = TextEditingController(
        text: _details.year?.toString() ?? '',
      );
    } else {
      _yearController = null;
    }
    if (_usesKm) {
      _kmController = TextEditingController(
        text: _details.kilometers?.toString() ?? '',
      );
    } else {
      _kmController = null;
    }
  }

  @override
  void dispose() {
    _yearController?.dispose();
    _kmController?.dispose();
    super.dispose();
  }

  VehiclesDetails _buildDetails() {
    final yearController = _yearController;
    final kmController = _kmController;
    return _details.copyWith(
      year: yearController == null ? _details.year : parseCarYear(yearController.text),
      kilometers: kmController == null
          ? _details.kilometers
          : parseCarKilometers(kmController.text),
    );
  }

  void _clearAll() {
    setState(() {
      _details = const VehiclesDetails();
      _yearController?.clear();
      _kmController?.clear();
    });
  }

  Future<void> _pickCarBrand() async {
    final picked = await Navigator.of(context).push<CarBrandSelection>(
      MaterialPageRoute(builder: (context) => const CarBrandPickerPage()),
    );
    if (!mounted || picked == null) return;
    setState(() {
      _details = _details.copyWith(carBrand: picked.name, carModel: null);
    });
  }

  Future<void> _pickCarModel() async {
    final brand = _details.carBrand;
    if (brand == null) return;
    final picked = await Navigator.of(context).push<String>(
      MaterialPageRoute(
        builder: (context) => CarModelPickerPage(brandName: brand),
      ),
    );
    if (!mounted || picked == null) return;
    setState(() => _details = _details.copyWith(carModel: picked));
  }

  Future<void> _pickMotorcycleBrand() async {
    final picked = await Navigator.of(context).push<CarBrandSelection>(
      MaterialPageRoute(
        builder: (context) => const MotorcycleBrandPickerPage(),
      ),
    );
    if (!mounted || picked == null) return;
    setState(() {
      _details = VehiclesDetails(
        motorcycleBrand: picked.name,
        motorcycleType: _details.motorcycleType,
        motorcycleFuelType: _details.motorcycleFuelType,
        motorcycleCC: _details.motorcycleCC,
        condition: _details.condition,
      );
      _yearController?.clear();
    });
  }

  Future<void> _pickMotorcycleModel() async {
    final brand = _details.motorcycleBrand;
    if (brand == null) return;
    final picked = await Navigator.of(context).push<String>(
      MaterialPageRoute(
        builder: (context) => MotorcycleModelPickerPage(brandName: brand),
      ),
    );
    if (!mounted || picked == null) return;
    setState(() => _details = _details.copyWith(motorcycleModel: picked));
  }

  Future<void> _pickTruckBrand() async {
    final picked = await Navigator.of(context).push<TruckBrand>(
      MaterialPageRoute(builder: (context) => const TruckBrandPickerPage()),
    );
    if (!mounted || picked == null) return;
    setState(() {
      _details = _details.copyWith(truckBrand: picked);
      _yearController?.clear();
    });
  }

  Widget _sectionGap() => SizedBox(height: context.spaceMedium);

  Widget _smallGap() => SizedBox(height: context.spaceSmall);

  Widget _conditionSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const FilterSectionTitle(title: 'Condition'),
        _smallGap(),
        VehicleConditionField(
          value: _details.condition,
          onChanged: (value) =>
              setState(() => _details = _details.copyWith(condition: value)),
        ),
      ],
    );
  }

  Widget _yearSection({bool requiredField = false}) {
    final controller = _yearController;
    if (controller == null) return const SizedBox.shrink();

    final pageBg = Theme.of(context).colorScheme.surface;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const FilterSectionTitle(title: 'Year'),
        _smallGap(),
        CarsForSaleYearField(
          controller: controller,
          pageBg: pageBg,
          requiredField: requiredField,
        ),
      ],
    );
  }

  List<Widget> _buildFilterFields() {
    return switch (_subcategoryName) {
      VehiclesSubcategoryBody.carsForSale => _carsForSaleFields(),
      VehiclesSubcategoryBody.motorcyclesAndAtvs => _motorcyclesFields(),
      VehiclesSubcategoryBody.numberPlates => _numberPlatesFields(),
      VehiclesSubcategoryBody.vehicleSpareParts => _sparePartsFields(),
      VehiclesSubcategoryBody.vehicleAccessories => _accessoriesFields(),
      VehiclesSubcategoryBody.trucksAndBuses => _trucksFields(),
      VehiclesSubcategoryBody.boats => _boatsFields(),
      _ => [
        const Text('No filters available for this subcategory yet.'),
      ],
    };
  }

  List<Widget> _carsForSaleFields() {
    final pageBg = Theme.of(context).colorScheme.surface;
    final kmController = _kmController;
    if (kmController == null) return [];

    return [
      FilterNavRow(
        label: 'Brand',
        value: _details.carBrand ?? 'Any',
        onTap: _pickCarBrand,
      ),
      _smallGap(),
      FilterNavRow(
        label: 'Model',
        value: _details.carModel ?? 'Any',
        onTap: _details.carBrand == null ? null : _pickCarModel,
      ),
      _sectionGap(),
      _conditionSection(),
      _sectionGap(),
      _yearSection(),
      _sectionGap(),
      const FilterSectionTitle(title: 'Max kilometers'),
      _smallGap(),
      CarsForSaleKilometersField(
        controller: kmController,
        pageBg: pageBg,
      ),
      _sectionGap(),
      const FilterSectionTitle(title: 'Fuel type'),
      _smallGap(),
      BrowseEnumDropdownField<FuelType>(
        resetKey: _details.fuelType,
        fieldSuffix: 'fuel',
        value: _details.fuelType,
        onChanged: (v) => setState(() => _details = _details.copyWith(fuelType: v)),
        hintText: 'Any fuel type',
        values: FuelType.values,
        labelBuilder: (v) => v.label,
      ),
      _sectionGap(),
      const FilterSectionTitle(title: 'Transmission'),
      _smallGap(),
      BrowseEnumDropdownField<TransmissionType>(
        resetKey: _details.transmissionType,
        fieldSuffix: 'transmission',
        value: _details.transmissionType,
        onChanged: (v) =>
            setState(() => _details = _details.copyWith(transmissionType: v)),
        hintText: 'Any transmission',
        values: TransmissionType.values,
        labelBuilder: (v) => v.label,
      ),
    ];
  }

  List<Widget> _motorcyclesFields() {
    return [
      FilterNavRow(
        label: 'Brand',
        value: _details.motorcycleBrand ?? 'Any',
        onTap: _pickMotorcycleBrand,
      ),
      if (_details.motorcycleBrand != null) ...[
        _smallGap(),
        FilterNavRow(
          label: 'Model',
          value: _details.motorcycleModel ?? 'Any',
          onTap: _pickMotorcycleModel,
        ),
      ],
      _sectionGap(),
      const FilterSectionTitle(title: 'Type'),
      _smallGap(),
      BrowseEnumDropdownField<MotorcycleType>(
        resetKey: _details.motorcycleType,
        fieldSuffix: 'motorcycle_type',
        value: _details.motorcycleType,
        onChanged: (v) =>
            setState(() => _details = _details.copyWith(motorcycleType: v)),
        hintText: 'Any type',
        values: MotorcycleType.values,
        labelBuilder: (v) => v.label,
      ),
      _sectionGap(),
      _conditionSection(),
      _sectionGap(),
      const FilterSectionTitle(title: 'Fuel type'),
      _smallGap(),
      BrowseEnumDropdownField<MotorcycleFuelType>(
        resetKey: _details.motorcycleFuelType,
        fieldSuffix: 'motorcycle_fuel',
        value: _details.motorcycleFuelType,
        onChanged: (v) => setState(
          () => _details = _details.copyWith(motorcycleFuelType: v),
        ),
        hintText: 'Any fuel type',
        values: MotorcycleFuelType.values,
        labelBuilder: (v) => v.label,
      ),
      _sectionGap(),
      _yearSection(),
      _sectionGap(),
      const FilterSectionTitle(title: 'CC'),
      _smallGap(),
      BrowseEnumDropdownField<MotorcycleCC>(
        resetKey: _details.motorcycleCC,
        fieldSuffix: 'motorcycle_cc',
        value: _details.motorcycleCC,
        onChanged: (v) =>
            setState(() => _details = _details.copyWith(motorcycleCC: v)),
        hintText: 'Any CC',
        values: MotorcycleCC.values,
        labelBuilder: (v) => v.label,
      ),
    ];
  }

  List<Widget> _numberPlatesFields() {
    return [
      const FilterSectionTitle(title: 'Number of digits'),
      _smallGap(),
      BrowseEnumDropdownField<PlateDigits>(
        resetKey: _details.numberOfDigits,
        fieldSuffix: 'plate_digits',
        value: _details.numberOfDigits,
        onChanged: (v) =>
            setState(() => _details = _details.copyWith(numberOfDigits: v)),
        hintText: 'Any',
        values: PlateDigits.values,
        labelBuilder: (v) => v.digitCountLabel,
      ),
    ];
  }

  List<Widget> _sparePartsFields() {
    return [
      FilterNavRow(
        label: 'Brand',
        value: _details.carBrand ?? 'Any',
        onTap: _pickCarBrand,
      ),
      _sectionGap(),
      const FilterSectionTitle(title: 'Part type'),
      _smallGap(),
      BrowseEnumDropdownField<PartType>(
        resetKey: _details.partType,
        fieldSuffix: 'part_type',
        value: _details.partType,
        onChanged: (v) => setState(() => _details = _details.copyWith(partType: v)),
        hintText: 'Any part type',
        values: PartType.values,
        labelBuilder: (v) => v.label,
      ),
      _sectionGap(),
      const FilterSectionTitle(title: 'Vehicle type'),
      _smallGap(),
      BrowseEnumDropdownField<VehicleType>(
        resetKey: _details.vehicleType,
        fieldSuffix: 'vehicle_type',
        value: _details.vehicleType,
        onChanged: (v) =>
            setState(() => _details = _details.copyWith(vehicleType: v)),
        hintText: 'Any vehicle type',
        values: VehicleType.values,
        labelBuilder: (v) => v.label,
      ),
      _sectionGap(),
      _conditionSection(),
    ];
  }

  List<Widget> _accessoriesFields() {
    return [
      const FilterSectionTitle(title: 'Accessory type'),
      _smallGap(),
      BrowseEnumDropdownField<AccessoryType>(
        resetKey: _details.accessoryType,
        fieldSuffix: 'accessory_type',
        value: _details.accessoryType,
        onChanged: (v) =>
            setState(() => _details = _details.copyWith(accessoryType: v)),
        hintText: 'Any accessory type',
        values: AccessoryType.values,
        labelBuilder: (v) => v.label,
      ),
      _sectionGap(),
      const FilterSectionTitle(title: 'Vehicle type'),
      _smallGap(),
      BrowseEnumDropdownField<VehicleType>(
        resetKey: _details.vehicleType,
        fieldSuffix: 'accessories_vehicle_type',
        value: _details.vehicleType,
        onChanged: (v) =>
            setState(() => _details = _details.copyWith(vehicleType: v)),
        hintText: 'Any vehicle type',
        values: VehicleType.values,
        labelBuilder: (v) => v.label,
      ),
      _sectionGap(),
      _conditionSection(),
    ];
  }

  List<Widget> _trucksFields() {
    return [
      FilterNavRow(
        label: 'Brand',
        value: _details.truckBrand?.label ?? 'Any',
        onTap: _pickTruckBrand,
      ),
      _sectionGap(),
      _yearSection(),
      _sectionGap(),
      _conditionSection(),
    ];
  }

  List<Widget> _boatsFields() {
    return [
      const FilterSectionTitle(title: 'Type'),
      _smallGap(),
      BrowseEnumDropdownField<BoatType>(
        resetKey: _details.boatType,
        fieldSuffix: 'boat_type',
        value: _details.boatType,
        onChanged: (v) => setState(() => _details = _details.copyWith(boatType: v)),
        hintText: 'Any type',
        values: BoatType.values,
        labelBuilder: (v) => v.label,
      ),
      _sectionGap(),
      _yearSection(),
      _sectionGap(),
      _conditionSection(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return BrowseFilterShell(
      title: _subcategoryName,
      onClearAll: _clearAll,
      onApply: () => Navigator.of(context).pop(_buildDetails()),
      children: _buildFilterFields(),
    );
  }
}
