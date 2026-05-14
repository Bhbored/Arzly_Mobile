import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/listing_owned/real_estate/chalet_feature.dart';
import 'package:arzly/core/utils/chalet_features_helper.dart';
import 'package:arzly/features/new_listing/shared/inputs/car_picker_search_decoration.dart';
import 'package:flutter/material.dart';

Route<List<ChaletFeature>> createChaletFeaturesSelectorRoute({
  required List<ChaletFeature> initialSelection,
}) {
  return PageRouteBuilder<List<ChaletFeature>>(
    opaque: true,
    fullscreenDialog: true,
    transitionDuration: const Duration(milliseconds: 320),
    reverseTransitionDuration: const Duration(milliseconds: 280),
    pageBuilder: (context, animation, secondaryAnimation) {
      return ChaletFeaturesSelectorPage(initialSelection: initialSelection);
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

class ChaletFeaturesSelectorPage extends StatefulWidget {
  const ChaletFeaturesSelectorPage({super.key, required this.initialSelection});

  final List<ChaletFeature> initialSelection;

  @override
  State<ChaletFeaturesSelectorPage> createState() =>
      _ChaletFeaturesSelectorPageState();
}

class _ChaletFeaturesSelectorPageState
    extends State<ChaletFeaturesSelectorPage> {
  late final TextEditingController _searchController;
  late final Set<ChaletFeature> _selected;
  String _query = '';

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _selected = Set<ChaletFeature>.from(widget.initialSelection);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _toggle(ChaletFeature f) {
    setState(() {
      if (_selected.contains(f)) {
        _selected.remove(f);
      } else {
        _selected.add(f);
      }
    });
  }

  void _clearAll() {
    setState(_selected.clear);
  }

  void _confirm() {
    Navigator.of(
      context,
    ).pop<List<ChaletFeature>>(orderedChaletFeatures(_selected));
  }

  bool _matches(ChaletFeature f) {
    final q = _query.trim().toLowerCase();
    if (q.isEmpty) return true;
    return f.label.toLowerCase().contains(q);
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final pageBg = scheme.surfaceContainerLowest;
    final allOrdered = orderedChaletFeatures(ChaletFeature.values);
    final visible = allOrdered.where(_matches).toList();

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
          'Features',
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
            child: visible.isEmpty
                ? Center(
                    child: Padding(
                      padding: EdgeInsets.all(context.paddingLarge),
                      child: Text(
                        _query.trim().isEmpty
                            ? 'No features available.'
                            : 'No features match your search.',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: scheme.onSurfaceVariant,
                        ),
                      ),
                    ),
                  )
                : ListView.separated(
                    padding: EdgeInsets.zero,
                    keyboardDismissBehavior:
                        ScrollViewKeyboardDismissBehavior.onDrag,
                    itemCount: visible.length,
                    separatorBuilder: (context, _) =>
                        Divider(height: 1, color: scheme.outlineVariant),
                    itemBuilder: (context, i) {
                      final f = visible[i];
                      final selected = _selected.contains(f);
                      return ListTile(
                        onTap: () => _toggle(f),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: context.paddingMedium,
                        ),

                        title: Text(f.label),
                        trailing: selected
                            ? Icon(Icons.check_rounded, color: scheme.primary)
                            : null,
                      );
                    },
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
