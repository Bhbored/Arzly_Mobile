import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/network/other_clients/car_models_client.dart';
import 'package:arzly/features/new_listing/shared/inputs/car_picker_search_decoration.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/pickers/models/car_brand_selection.dart';
import 'package:arzly/features/shared/skeletons/home_search_bar_skeleton.dart';
import 'package:arzly/features/shared/skeletons/list_tile_column_skeleton.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CarBrandPickerPage extends StatefulWidget {
  const CarBrandPickerPage({super.key});

  @override
  State<CarBrandPickerPage> createState() => _CarBrandPickerPageState();
}

class _CarBrandPickerPageState extends State<CarBrandPickerPage> {
  final CarApiService _api = CarApiService();
  late final TextEditingController _searchController;
  String _query = '';

  bool _loading = true;
  String? _errorMessage;
  List<CarBrandSelection> _brands = [];
  final Set<String> _failedBrandLogoUrls = {};

  void _onBrandLogoFailed(String logoUrl) {
    if (!mounted) return;
    if (_failedBrandLogoUrls.add(logoUrl)) {
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _loadBrands();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _loadBrands() async {
    setState(() {
      _loading = true;
      _errorMessage = null;
    });
    try {
      final map = await _api.fetchBrandsWithLogos();
      if (!mounted) return;
      if (map.isEmpty) {
        setState(() {
          _brands = [];
          _loading = false;
          _errorMessage =
              'No brands are available. Check your connection and try again.';
        });
        return;
      }
      final list =
          map.entries
              .map((e) => CarBrandSelection(name: e.key, logoUrl: e.value))
              .toList()
            ..sort((a, b) => a.name.compareTo(b.name));
      setState(() {
        _brands = list;
        _loading = false;
        _errorMessage = null;
        _failedBrandLogoUrls.clear();
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _brands = [];
        _loading = false;
        _errorMessage = 'Something went wrong. Try again.';
      });
    }
  }

  List<CarBrandSelection> get _filtered {
    final q = _query.trim().toLowerCase();
    if (q.isEmpty) return _brands;
    return _brands.where((b) => b.name.toLowerCase().contains(q)).toList();
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
      body: _loading
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    context.paddingMedium,
                    0,
                    context.paddingMedium,
                    context.spaceSmall,
                  ),
                  child: const HomeSearchBarSkeleton(),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(
                      horizontal: context.paddingMedium,
                    ),
                    child: ListTileColumnSkeleton(
                      includeTrailing: false,
                      tileBackgroundColor: pageBg,
                    ),
                  ),
                ),
              ],
            )
          : _errorMessage != null
          ? Center(
              child: Padding(
                padding: EdgeInsets.all(context.paddingLarge),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      _errorMessage!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                    SizedBox(height: context.spaceMedium),
                    FilledButton(
                      onPressed: _loadBrands,
                      child: const Text('Try again'),
                    ),
                  ],
                ),
              ),
            )
          : Column(
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
                      borderRadius: BorderRadius.circular(
                        context.borderRadiusMedium,
                      ),
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
                      ? _EmptyMessage(
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
                            return _BrandPickerTile(
                              brand: brand,
                              logoFailed: _failedBrandLogoUrls.contains(
                                brand.logoUrl,
                              ),
                              onLogoFailed: _onBrandLogoFailed,
                              onTap: () => Navigator.of(
                                context,
                              ).pop<CarBrandSelection>(brand),
                            );
                          },
                        ),
                ),
              ],
            ),
    );
  }
}

class _BrandPickerTile extends StatelessWidget {
  const _BrandPickerTile({
    required this.brand,
    required this.logoFailed,
    required this.onLogoFailed,
    required this.onTap,
  });

  final CarBrandSelection brand;
  final bool logoFailed;
  final ValueChanged<String> onLogoFailed;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final size = context.screenWidth * 0.11;
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: context.spaceSmall),
      onTap: onTap,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(context.borderRadiusMedium),
        child: ColoredBox(
          color: scheme.surfaceContainerLow,
          child: SizedBox(
            width: size.clamp(44, 52),
            height: size.clamp(44, 52),
            child: logoFailed
                ? Icon(
                    Icons.broken_image_outlined,
                    color: scheme.onSurfaceVariant,
                  )
                : CachedNetworkImage(
                    imageUrl: brand.logoUrl,
                    fit: BoxFit.contain,
                    fadeInDuration: const Duration(milliseconds: 200),
                    placeholder: (context, url) => Center(
                      child: SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: scheme.primary,
                        ),
                      ),
                    ),
                    errorWidget: (context, url, error) {
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        onLogoFailed(brand.logoUrl);
                      });
                      return Icon(
                        Icons.broken_image_outlined,
                        color: scheme.onSurfaceVariant,
                      );
                    },
                  ),
          ),
        ),
      ),
      title: Text(
        brand.name,
        style: Theme.of(
          context,
        ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }
}

class _EmptyMessage extends StatelessWidget {
  const _EmptyMessage({required this.message});

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
