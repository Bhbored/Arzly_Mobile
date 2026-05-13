import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/listing_owned/motors/car_feature.dart';
import 'package:arzly/core/utils/car_features_helper.dart';
import 'package:arzly/features/new_listing/shared/inputs/car_picker_search_decoration.dart';
import 'package:flutter/material.dart';

Route<List<CarFeature>> createExtraFeaturesSelectorRoute({
  required List<CarFeature> initialSelection,
}) {
  return PageRouteBuilder<List<CarFeature>>(
    opaque: true,
    fullscreenDialog: true,
    transitionDuration: const Duration(milliseconds: 320),
    reverseTransitionDuration: const Duration(milliseconds: 280),
    pageBuilder: (context, animation, secondaryAnimation) {
      return ExtraFeaturesSelectorPage(initialSelection: initialSelection);
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

class ExtraFeaturesSelectorPage extends StatefulWidget {
  const ExtraFeaturesSelectorPage({
    super.key,
    required this.initialSelection,
  });

  final List<CarFeature> initialSelection;

  @override
  State<ExtraFeaturesSelectorPage> createState() =>
      _ExtraFeaturesSelectorPageState();
}

class _ExtraFeaturesSelectorPageState extends State<ExtraFeaturesSelectorPage> {
  late final TextEditingController _searchController;
  late final Set<CarFeature> _selected;
  String _query = '';

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _selected = Set<CarFeature>.from(widget.initialSelection);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _toggleFeature(CarFeature feature) {
    setState(() {
      if (_selected.contains(feature)) {
        _selected.remove(feature);
      } else {
        _selected.add(feature);
      }
    });
  }

  void _clearAll() {
    setState(_selected.clear);
  }

  void _confirm() {
    Navigator.of(context).pop<List<CarFeature>>(
      orderedCarFeatures(_selected),
    );
  }

  bool _matchesQuery(String label) {
    final q = _query.trim().toLowerCase();
    if (q.isEmpty) return true;
    return label.toLowerCase().contains(q);
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final pageBg = scheme.surfaceContainerLowest;

    return Scaffold(
      backgroundColor: pageBg,
      appBar: AppBar(
        backgroundColor: pageBg,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.close_rounded),
        ),
        titleSpacing: 0,
        centerTitle: false,
        title: Text(
          'Choose Extra Feature',
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
        ),
        actions: [
          TextButton(
            onPressed: _selected.isEmpty ? null : _clearAll,
            child: const Text('Clear all'),
          ),
        ],
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
                onChanged: (value) => setState(() => _query = value),
                textInputAction: TextInputAction.search,
                decoration: carPickerSearchDecoration(
                  context,
                  pageBg,
                  scheme,
                  hintText: 'Search features',
                ),
              ),
            ),
          ),
          Expanded(
            child: _ExtraFeaturesSelectorList(
              query: _query,
              selected: _selected,
              onToggle: _toggleFeature,
              matchesQuery: _matchesQuery,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
              context.paddingMedium,
              context.spaceSmall,
              context.paddingMedium,
              context.spaceMedium + context.viewInsets.bottom,
            ),
            child: FilledButton(
              onPressed: _confirm,
              style: FilledButton.styleFrom(
                minimumSize: Size(double.infinity, context.screenHeight * 0.05),
                padding: EdgeInsets.symmetric(vertical: context.spaceSmall),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                elevation: 0,
              ),
              child: Text(
                'Confirm',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: scheme.onPrimary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ExtraFeaturesSelectorList extends StatelessWidget {
  const _ExtraFeaturesSelectorList({
    required this.query,
    required this.selected,
    required this.onToggle,
    required this.matchesQuery,
  });

  final String query;
  final Set<CarFeature> selected;
  final ValueChanged<CarFeature> onToggle;
  final bool Function(String label) matchesQuery;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final children = <Widget>[];

    for (final entry in carFeatureGroups.entries) {
      final visibleLabels = entry.value
          .where(matchesQuery)
          .map(carFeatureFromLabel)
          .whereType<CarFeature>()
          .toList();
      if (visibleLabels.isEmpty) continue;

      children.add(
        Padding(
          padding: EdgeInsets.fromLTRB(
            context.paddingMedium,
            context.spaceSmall,
            context.paddingMedium,
            context.spaceSmall * 0.5,
          ),
          child: Text(
            entry.key,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w700,
              color: scheme.onSurface,
            ),
          ),
        ),
      );

      for (var i = 0; i < visibleLabels.length; i++) {
        final feature = visibleLabels[i];
        children.add(
          _ExtraFeatureTile(
            feature: feature,
            selected: selected.contains(feature),
            onTap: () => onToggle(feature),
          ),
        );
        if (i < visibleLabels.length - 1) {
          children.add(Divider(height: 1, color: scheme.outlineVariant));
        }
      }

      children.add(SizedBox(height: context.spaceSmall));
    }

    if (children.isEmpty) {
      return Center(
        child: Padding(
          padding: EdgeInsets.all(context.paddingLarge),
          child: Text(
            query.trim().isEmpty
                ? 'No features available.'
                : 'No features match your search.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: scheme.onSurfaceVariant,
            ),
          ),
        ),
      );
    }

    return ListView(
      padding: EdgeInsets.zero,
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      children: children,
    );
  }
}

class _ExtraFeatureTile extends StatelessWidget {
  const _ExtraFeatureTile({
    required this.feature,
    required this.selected,
    required this.onTap,
  });

  final CarFeature feature;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return ListTile(
      onTap: onTap,
      contentPadding: EdgeInsets.symmetric(horizontal: context.paddingMedium),
      leading: Icon(
        carFeatureIcon(feature),
        color: selected ? scheme.primary : scheme.onSurfaceVariant,
      ),
      title: Text(carFeatureLabel(feature)),
      trailing: selected
          ? Icon(Icons.check_rounded, color: scheme.primary)
          : null,
    );
  }
}
