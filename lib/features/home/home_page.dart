import 'package:arzly/core/exceptions/api_exception.dart';
import 'package:arzly/data/providers/category/category_provider.dart';
import 'package:arzly/data/providers/listings/initial_listings_provider.dart';
import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/features/home/widgets/category_grid_slider.dart';
import 'package:arzly/features/home/widgets/subcategory_listing_row.dart';
import 'package:arzly/features/home/widgets/home_app_bar.dart';
import 'package:arzly/features/home/widgets/home_search_bar.dart';
import 'package:arzly/features/shared/skeletons/home_category_skeleton.dart';
import 'package:arzly/features/shared/skeletons/home_search_bar_skeleton.dart';
import 'package:arzly/features/shared/skeletons/initial_listing_skeleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {});
  }

  @override
  Widget build(BuildContext context) {
    final initialListings = ref.watch(initialListingsProviderProvider);
    final categories = ref.watch(categoryDataProvider);
    final showSearchSkeleton = categories.isLoading;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(HomeAppBar.preferredHeight(context)),
        child: const HomeAppBar(),
      ),
      body: RefreshIndicator(
        color: Theme.of(context).colorScheme.primary,
        onRefresh: () async {
          await Future.wait([
            ref.read(initialListingsProviderProvider.notifier).refresh(),
            ref.read(categoryDataProvider.notifier).refresh(),
          ]);
        },
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: context.paddingMedium),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: context.spaceSmall),
              showSearchSkeleton
                  ? const HomeSearchBarSkeleton()
                  : const HomeSearchBar(),
              SizedBox(height: context.spaceMedium),
              categories.when(
                data: (data) => CategoryGridSlider(categories: data),
                error: (error, stackTrace) {
                  return SizedBox.shrink();
                },
                loading: () => const HomeCategorySkeleton(),
              ),
              initialListings.when(
                data: (sections) => Column(
                  children: sections
                      .map(
                        (section) => [
                          SubcategoryListingRow(
                            subcategoryName: section.subcategoryName,
                            listings: section.listings,
                          ),
                          SizedBox(height: context.screenHeight * 0.004),
                        ],
                      )
                      .expand((widget) => widget)
                      .toList(),
                ),
                error: (error, stackTrace) {
                  final message = error is ApiException
                      ? error.userMessage
                      : error.toString();
                  return Center(child: Text(message));
                },

                loading: () => const InitialListingSkeleton(),
              ),
              SizedBox(height: context.bottomPadding + 60),
            ],
          ),
        ),
      ),
    );
  }
}
