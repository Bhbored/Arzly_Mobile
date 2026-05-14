import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/phone_brand.dart';
import 'package:arzly/features/new_listing/shared/inputs/car_picker_search_decoration.dart';
import 'package:flutter/material.dart';

Route<PhoneBrand?> createPhoneBrandPickerRoute() {
  return PageRouteBuilder<PhoneBrand?>(
    opaque: true,
    fullscreenDialog: true,
    transitionDuration: const Duration(milliseconds: 320),
    reverseTransitionDuration: const Duration(milliseconds: 280),
    pageBuilder: (context, animation, secondaryAnimation) {
      return const PhoneBrandPickerPage();
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

class PhoneBrandPickerPage extends StatefulWidget {
  const PhoneBrandPickerPage({super.key});

  @override
  State<PhoneBrandPickerPage> createState() => _PhoneBrandPickerPageState();
}

class _PhoneBrandPickerPageState extends State<PhoneBrandPickerPage> {
  late final TextEditingController _searchController;
  String _query = '';

  static final List<PhoneBrand> _allBrands = () {
    final list = List<PhoneBrand>.from(PhoneBrand.values);
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

  List<PhoneBrand> get _filtered {
    final q = _query.trim().toLowerCase();
    if (q.isEmpty) return _allBrands;
    return _allBrands
        .where((b) => b.label.toLowerCase().contains(q))
        .toList();
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
          icon: const Icon(Icons.close_rounded),
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
                ? Center(
                    child: Padding(
                      padding: EdgeInsets.all(context.paddingLarge),
                      child: Text(
                        _query.trim().isEmpty
                            ? 'No brands available.'
                            : 'No brands match your search.',
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
                    itemCount: filtered.length,
                    separatorBuilder: (context, _) => Divider(
                      height: 1,
                      color: scheme.outlineVariant,
                    ),
                    itemBuilder: (context, i) {
                      final brand = filtered[i];
                      return ListTile(
                        onTap: () =>
                            Navigator.of(context).pop<PhoneBrand>(brand),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: context.paddingMedium,
                        ),
                        title: Text(
                          brand.label,
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
