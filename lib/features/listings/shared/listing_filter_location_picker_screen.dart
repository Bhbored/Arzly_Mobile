import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/location_preset.dart';
import 'package:arzly/features/listings/shared/listing_browse_search_input.dart';
import 'package:arzly/features/listings/shared/listing_location_filter_labels.dart';
import 'package:flutter/material.dart';

Route<LocationPreset?> createListingFilterLocationPickerRoute({
  LocationPreset? selectedPreset,
}) {
  return PageRouteBuilder<LocationPreset?>(
    opaque: true,
    fullscreenDialog: true,
    transitionDuration: const Duration(milliseconds: 320),
    reverseTransitionDuration: const Duration(milliseconds: 280),
    pageBuilder: (context, animation, secondaryAnimation) {
      return ListingFilterLocationPickerScreen(
        selectedPreset: selectedPreset,
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

Future<LocationPreset?> openListingFilterLocationPicker(
  BuildContext context, {
  LocationPreset? selectedPreset,
}) {
  return Navigator.of(context).push<LocationPreset?>(
    createListingFilterLocationPickerRoute(selectedPreset: selectedPreset),
  );
}

class ListingFilterLocationPickerScreen extends StatefulWidget {
  const ListingFilterLocationPickerScreen({
    super.key,
    this.selectedPreset,
  });

  final LocationPreset? selectedPreset;

  @override
  State<ListingFilterLocationPickerScreen> createState() =>
      _ListingFilterLocationPickerScreenState();
}

class _ListingFilterLocationPickerScreenState
    extends State<ListingFilterLocationPickerScreen> {
  late LocationPreset? _selectedPreset;
  late final TextEditingController _searchController;
  late final FocusNode _searchFocusNode;
  String _query = '';

  @override
  void initState() {
    super.initState();
    _selectedPreset = widget.selectedPreset;
    _searchController = TextEditingController();
    _searchFocusNode = FocusNode();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _searchFocusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }

  List<LocationPreset> get _filteredPresets {
    final query = _query.trim().toLowerCase();
    if (query.isEmpty) return LocationPreset.values;
    return LocationPreset.values
        .where((preset) => preset.label.toLowerCase().contains(query))
        .toList();
  }

  void _selectAllAreas() {
    Navigator.of(context).pop<LocationPreset?>(null);
  }

  void _selectPreset(LocationPreset preset) {
    Navigator.of(context).pop(preset);
  }

  void _clearSearchField() {
    _searchController.clear();
    setState(() => _query = '');
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final presets = _filteredPresets;
    final showAllAreas = _query.trim().isEmpty;

    return Scaffold(
      backgroundColor: colors.surfaceContainerLowest,
      appBar: AppBar(
        backgroundColor: colors.surfaceContainerLowest,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(_selectedPreset),
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        titleSpacing: 0,
        title: Text(
          LocationPresetDisplay.fieldTitle,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
              context.paddingMedium,
              context.spaceSmall,
              context.paddingMedium,
              context.spaceSmall,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ListingBrowseSearchInput(
                    controller: _searchController,
                    focusNode: _searchFocusNode,
                    hintText: 'Search areas...',
                    onChanged: (value) => setState(() => _query = value),
                  ),
                ),
                TextButton(
                  onPressed: _clearSearchField,
                  child: Text(
                    'Clear',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: colors.primary,
                        ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.fromLTRB(
                context.paddingMedium,
                0,
                context.paddingMedium,
                context.bottomPadding + context.spaceMedium,
              ),
              children: [
                if (showAllAreas)
                  _LocationPresetTile(
                    label: ListingLocationFilterLabels.allAreas,
                    isSelected: _selectedPreset == null,
                    onTap: _selectAllAreas,
                  ),
                for (final preset in presets)
                  _LocationPresetTile(
                    label: preset.label,
                    isSelected: _selectedPreset == preset,
                    onTap: () => _selectPreset(preset),
                  ),
                if (!showAllAreas && presets.isEmpty)
                  Padding(
                    padding: EdgeInsets.only(top: context.spaceLarge),
                    child: Text(
                      'No areas match your search',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: colors.onSurfaceVariant,
                          ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _LocationPresetTile extends StatelessWidget {
  const _LocationPresetTile({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: context.paddingSmall),
      title: Text(
        label,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
            ),
      ),
      trailing: isSelected
          ? Icon(Icons.check_rounded, color: colors.primary)
          : null,
      onTap: onTap,
    );
  }
}
