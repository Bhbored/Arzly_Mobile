import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/location_preset.dart';
import 'package:arzly/data/providers/category/category_provider.dart';
import 'package:arzly/domain/entities/category/category.dart';
import 'package:arzly/features/categories/all_categories_screen.dart';
import 'package:arzly/features/categories/category_picker.dart';
import 'package:arzly/features/categories/widgets/category_list_avatar.dart';
import 'package:arzly/core/utils/listing_browse_filter.dart';
import 'package:arzly/features/listings/shared/listing_filter_apply_result.dart';
import 'package:arzly/features/listings/shared/listing_filter_location_picker_screen.dart';
import 'package:arzly/features/listings/shared/listing_filter_order_section.dart';
import 'package:arzly/features/listings/shared/listing_location_filter_labels.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Route<ListingFilterApplyResult?> createListingFilterRoute({
  required Category category,
  ListingBrowseFilter initialFilter = ListingBrowseFilter.empty,
}) {
  return PageRouteBuilder<ListingFilterApplyResult?>(
    opaque: true,
    fullscreenDialog: true,
    transitionDuration: const Duration(milliseconds: 320),
    reverseTransitionDuration: const Duration(milliseconds: 280),
    pageBuilder: (context, animation, secondaryAnimation) {
      return ListingFilterScreen(
        category: category,
        initialFilter: initialFilter,
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

Future<ListingFilterApplyResult?> openListingFilterPage(
  BuildContext context, {
  required Category category,
  ListingBrowseFilter initialFilter = ListingBrowseFilter.empty,
}) {
  return Navigator.of(context).push<ListingFilterApplyResult?>(
    createListingFilterRoute(category: category, initialFilter: initialFilter),
  );
}

class ListingFilterScreen extends ConsumerStatefulWidget {
  const ListingFilterScreen({
    super.key,
    required this.category,
    this.initialFilter = ListingBrowseFilter.empty,
  });

  final Category category;
  final ListingBrowseFilter initialFilter;

  @override
  ConsumerState<ListingFilterScreen> createState() =>
      _ListingFilterScreenState();
}

class _ListingFilterScreenState extends ConsumerState<ListingFilterScreen> {
  late Category _category;
  late String _order;
  late String _orderByPrice;
  late LocationPreset? _locationPreset;
  late final TextEditingController _minPriceController;
  late final TextEditingController _maxPriceController;
  late bool _negotiableOnly;

  @override
  void initState() {
    super.initState();
    _category = widget.category;
    _order = widget.initialFilter.order;
    _orderByPrice = widget.initialFilter.orderByPrice;
    _locationPreset = widget.initialFilter.locationPreset;
    _negotiableOnly = widget.initialFilter.negotiableOnly;
    _minPriceController = TextEditingController(
      text: widget.initialFilter.minPrice?.toStringAsFixed(0) ?? '',
    );
    _maxPriceController = TextEditingController(
      text: widget.initialFilter.maxPrice?.toStringAsFixed(0) ?? '',
    );
  }

  @override
  void dispose() {
    _minPriceController.dispose();
    _maxPriceController.dispose();
    super.dispose();
  }

  double? _parsePrice(String raw) {
    final trimmed = raw.trim();
    if (trimmed.isEmpty) return null;
    return double.tryParse(trimmed.replaceAll(',', ''));
  }

  ListingBrowseFilter _buildFilter() {
    return ListingBrowseFilter(
      order: _order,
      orderByPrice: _orderByPrice,
      locationPreset: _locationPreset,
      minPrice: _parsePrice(_minPriceController.text),
      maxPrice: _parsePrice(_maxPriceController.text),
      negotiableOnly: _negotiableOnly,
    );
  }

  void _clearAll() {
    setState(() {
      _order = ListingBrowseOrders.defaultOrder;
      _orderByPrice = ListingBrowseOrders.defaultOrder;
      _locationPreset = null;
      _negotiableOnly = false;
      _minPriceController.clear();
      _maxPriceController.clear();
    });
  }

  Future<void> _openLocationPicker() async {
    final selected = await openListingFilterLocationPicker(
      context,
      selectedPreset: _locationPreset,
    );

    if (!mounted) return;
    setState(() => _locationPreset = selected);
  }

  Future<void> _openCategoryPicker() async {
    final categories = ref.read(categoryDataProvider).value;
    if (categories == null || categories.isEmpty || !mounted) return;

    final selected = await Navigator.of(context).push<Category>(
      MaterialPageRoute(
        builder: (context) => AllCategoriesScreen(
          categories: categories,
          mode: CategoryPickerMode.select,
        ),
      ),
    );

    if (!mounted || selected == null) return;
    setState(() => _category = selected);
  }

  ListingFilterApplyResult _buildApplyResult() {
    return ListingFilterApplyResult(
      filter: _buildFilter(),
      category: _category,
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colors.surface,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                context.paddingSmall * 0.25,
                context.spaceSmall * 0.5,
                context.paddingMedium,
                context.spaceSmall,
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: Icon(
                      Icons.close_rounded,
                      size: context.screenHeight * 0.04,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: _clearAll,
                    child: Text(
                      'Clear all',
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
                  context.spaceMedium,
                ),
                children: [
                  Text(
                    'Filters',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colors.onSurface,
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: colors.outlineVariant.withValues(alpha: 0.45),
                  ),
                  SizedBox(height: context.spaceSmall),
                  Text(
                    'Category',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colors.onSurfaceVariant,
                    ),
                  ),
                  SizedBox(height: context.spaceSmall),
                  _FilterNavigationRow(
                    onTap: _openCategoryPicker,
                    child: Row(
                      children: [
                        CategoryListAvatar(category: _category),
                        SizedBox(width: context.paddingSmall),
                        Expanded(
                          child: Text(
                            _category.name,
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text(
                          'Change',
                          style: Theme.of(context).textTheme.labelLarge
                              ?.copyWith(
                                color: colors.primary,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: context.spaceMedium),
                  Divider(
                    height: 1,
                    color: colors.outlineVariant.withValues(alpha: 0.45),
                  ),
                  SizedBox(height: context.spaceMedium),
                  Text(
                    'Location',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colors.onSurfaceVariant,
                    ),
                  ),
                  SizedBox(height: context.spaceSmall),
                  _FilterNavigationRow(
                    onTap: _openLocationPicker,
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            _locationPreset?.label ??
                                ListingLocationFilterLabels.allAreas,
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(fontWeight: FontWeight.w600),
                          ),
                        ),
                        Icon(
                          Icons.chevron_right_rounded,
                          color: colors.onSurfaceVariant,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: context.spaceMedium),
                  Divider(
                    height: 1,
                    color: colors.outlineVariant.withValues(alpha: 0.45),
                  ),
                  SizedBox(height: context.spaceMedium),
                  ListingFilterOrderSection(
                    title: 'Date posted',
                    selectedValue: _order,
                    options: ListingBrowseOrders.dateOptions,
                    onChanged: (value) => setState(() => _order = value),
                  ),
                  SizedBox(height: context.spaceMedium),
                  ListingFilterOrderSection(
                    title: 'Price',
                    selectedValue: _orderByPrice,
                    options: ListingBrowseOrders.priceOptions,
                    onChanged: (value) => setState(() => _orderByPrice = value),
                  ),
                  SizedBox(height: context.spaceMedium),
                  Text(
                    'Price range',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: context.spaceSmall),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _minPriceController,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          decoration: const InputDecoration(
                            labelText: 'Min',
                            prefixText: '\$ ',
                          ),
                        ),
                      ),
                      SizedBox(width: context.paddingSmall),
                      Expanded(
                        child: TextField(
                          controller: _maxPriceController,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          decoration: const InputDecoration(
                            labelText: 'Max',
                            prefixText: '\$ ',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: context.spaceSmall),
                  SwitchListTile(
                    value: _negotiableOnly,
                    onChanged: (value) =>
                        setState(() => _negotiableOnly = value),
                    title: Text(
                      'Negotiable price only',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    contentPadding: EdgeInsets.zero,
                  ),
                ],
              ),
            ),
            SafeArea(
              top: false,
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                  context.paddingMedium,
                  context.spaceSmall,
                  context.paddingMedium,
                  context.spaceSmall,
                ),
                child: FilledButton(
                  onPressed: () =>
                      Navigator.of(context).pop(_buildApplyResult()),
                  style: FilledButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Text(
                    'Apply',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colors.onPrimary,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FilterNavigationRow extends StatelessWidget {
  const _FilterNavigationRow({required this.onTap, required this.child});

  final VoidCallback onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Material(
      color: colors.surfaceContainerLow,
      borderRadius: BorderRadius.circular(context.borderRadiusMedium),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.paddingSmall,
            vertical: context.spaceSmall,
          ),
          child: child,
        ),
      ),
    );
  }
}
