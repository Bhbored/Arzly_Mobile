import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/network/other_clients/car_models_client.dart';
import 'package:arzly/features/new_listing/shared/inputs/car_picker_search_decoration.dart';
import 'package:arzly/features/shared/skeletons/home_search_bar_skeleton.dart';
import 'package:arzly/features/shared/skeletons/list_tile_column_skeleton.dart';
import 'package:flutter/material.dart';

class CarModelPickerPage extends StatefulWidget {
  const CarModelPickerPage({super.key, required this.brandName});

  final String brandName;

  @override
  State<CarModelPickerPage> createState() => _CarModelPickerPageState();
}

class _CarModelPickerPageState extends State<CarModelPickerPage> {
  final CarApiService _api = CarApiService();
  late final TextEditingController _searchController;
  String _query = '';

  bool _loading = true;
  String? _errorMessage;
  List<String> _models = [];

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _loadModels();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _loadModels() async {
    setState(() {
      _loading = true;
      _errorMessage = null;
    });
    try {
      final models = await _api.fetchModelsForBrand(widget.brandName);
      if (!mounted) return;
      if (models.isEmpty) {
        setState(() {
          _models = [];
          _loading = false;
          _errorMessage =
              'No models found for this brand. Check your connection and try again.';
        });
        return;
      }
      setState(() {
        _models = models;
        _loading = false;
        _errorMessage = null;
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _models = [];
        _loading = false;
        _errorMessage = 'Could not load models. Try again.';
      });
    }
  }

  List<String> get _filtered {
    final q = _query.trim().toLowerCase();
    if (q.isEmpty) {
      final list = List<String>.from(_models)..sort();
      return list;
    }
    return _models.where((m) => m.toLowerCase().contains(q)).toList()..sort();
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
          'Model · ${widget.brandName}',
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
                      includeLeading: false,
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
                      onPressed: _loadModels,
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
                        hintText: 'Search models',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: filtered.isEmpty
                      ? _EmptyMessage(
                          message:
                              'No models match your search. Try another name.',
                        )
                      : ListView.separated(
                          padding: EdgeInsets.symmetric(
                            horizontal: context.paddingMedium,
                          ),
                          itemCount: filtered.length,
                          separatorBuilder: (context, index) =>
                              Divider(height: 1, color: scheme.outlineVariant),
                          itemBuilder: (context, index) {
                            final model = filtered[index];
                            return ListTile(
                              contentPadding: EdgeInsets.symmetric(
                                vertical: context.spaceSmall,
                              ),
                              title: Text(
                                model,
                                style: Theme.of(context).textTheme.bodyLarge
                                    ?.copyWith(fontWeight: FontWeight.w600),
                              ),
                              onTap: () =>
                                  Navigator.of(context).pop<String>(model),
                            );
                          },
                        ),
                ),
              ],
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
