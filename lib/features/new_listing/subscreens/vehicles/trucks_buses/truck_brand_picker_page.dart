import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/listing_owned/motors/truck_brand.dart';
import 'package:arzly/features/new_listing/shared/inputs/car_picker_search_decoration.dart';
import 'package:flutter/material.dart';

class TruckBrandPickerPage extends StatefulWidget {
  const TruckBrandPickerPage({super.key});

  @override
  State<TruckBrandPickerPage> createState() => _TruckBrandPickerPageState();
}

class _TruckBrandPickerPageState extends State<TruckBrandPickerPage> {
  late final TextEditingController _searchController;
  String _query = '';

  static final List<TruckBrand> _allBrands = () {
    final list = List<TruckBrand>.from(TruckBrand.values);
    list.sort((a, b) => a.label.compareTo(b.label));
    return list;
  }();

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<TruckBrand> get _filtered {
    final q = _query.trim().toLowerCase();
    if (q.isEmpty) return _allBrands;
    return _allBrands.where((b) => b.label.toLowerCase().contains(q)).toList();
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final pageBg = scheme.surfaceContainerLowest;
    final filtered = _filtered;

    return Scaffold(
      backgroundColor: pageBg,
      appBar: AppBar(
        backgroundColor: pageBg,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        titleSpacing: 0,
        centerTitle: false,
        title: Text(
          'Brand',
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
              context.paddingMedium,
              0,
              context.paddingMedium,
              context.spaceSmall,
            ),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: scheme.primary.withValues(alpha: 0.16),
                    blurRadius: 14,
                    offset: const Offset(0, 5),
                  ),
                ],
                borderRadius: BorderRadius.circular(context.borderRadiusMedium),
              ),
              child: TextField(
                controller: _searchController,
                onChanged: (v) => setState(() => _query = v),
                textInputAction: TextInputAction.search,
                decoration: carPickerSearchDecoration(
                  context,
                  pageBg,
                  scheme,
                  hintText: 'Search brands',
                ),
              ),
            ),
          ),
          Expanded(
            child: filtered.isEmpty
                ? _TruckBrandPickerEmpty(
                    message:
                        'No brands match your search. Try a different name.',
                  )
                : ListView.separated(
                    padding: EdgeInsets.symmetric(
                      horizontal: context.paddingMedium,
                    ),
                    itemCount: filtered.length,
                    separatorBuilder: (context, index) =>
                        Divider(height: 1, color: scheme.outlineVariant),
                    itemBuilder: (context, index) {
                      final brand = filtered[index];
                      return ListTile(
                        tileColor: pageBg,
                        leading: Text(
                          brand.label,
                          style: Theme.of(context).textTheme.bodyLarge
                              ?.copyWith(fontWeight: FontWeight.w600),
                        ),
                        onTap: () =>
                            Navigator.of(context).pop<TruckBrand>(brand),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

class _TruckBrandPickerEmpty extends StatelessWidget {
  const _TruckBrandPickerEmpty({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(context.paddingLarge),
        child: Text(
          message,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
      ),
    );
  }
}
