import 'package:arzly/data/providers/category/category_provider.dart';
import 'package:arzly/features/categories/category_picker.dart';
import 'package:arzly/features/categories/widgets/all_categories_list.dart';
import 'package:arzly/features/new_listing/new_listing_adder_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Route<void> createNewListingRoute() {
  return PageRouteBuilder<void>(
    opaque: true,
    transitionDuration: const Duration(milliseconds: 320),
    reverseTransitionDuration: const Duration(milliseconds: 280),
    pageBuilder: (context, animation, secondaryAnimation) {
      return const NewListingScreen();
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

class NewListingScreen extends ConsumerWidget {
  const NewListingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = Theme.of(context).colorScheme;
    final categoriesAsync = ref.watch(categoryDataProvider);

    final pageBg = colors.surfaceContainerLowest;

    return Scaffold(
      backgroundColor: pageBg,
      appBar: AppBar(
        backgroundColor: pageBg,
        elevation: 0,
        scrolledUnderElevation: 0,
        leadingWidth: 56,
        leading: IconButton(
          onPressed: () => Navigator.of(context).maybePop(),
          icon: Icon(Icons.close_rounded, color: colors.onSurface),
        ),
        titleSpacing: 0,
        centerTitle: false,
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'What are you selling?',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w700,
              color: colors.onSurface,
              height: 1,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
      body: categoriesAsync.when(
        data: (categories) => AllCategoriesList(
          categories: categories,
          mode: CategoryPickerMode.write,
          itemBackgroundColor: pageBg,
          onWritePick: (pick) => Navigator.of(context).push<void>(
            MaterialPageRoute<void>(
              builder: (_) => NewListingAdderPage(pick: pick),
            ),
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text('$error')),
      ),
    );
  }
}
