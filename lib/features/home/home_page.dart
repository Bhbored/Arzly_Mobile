import 'package:arzly/core/exceptions/api_exception.dart';
import 'package:arzly/data/providers/category/category_provider.dart';
import 'package:arzly/data/providers/listings/initial_listings_provider.dart';
import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/features/home/widgets/category_grid_slider.dart';
import 'package:arzly/features/home/widgets/category_listing_row.dart';
import 'package:arzly/features/home/widgets/home_app_bar.dart';
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
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: const HomeAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: context.paddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: context.spaceMedium),
            categories.when(
              data: (data) => CategoryGridSlider(categories: data),
              error: (error, stackTrace) {
                final message = error is ApiException
                    ? error.userMessage
                    : error.toString();
                return Center(child: Text(message));
              },
              loading: () => SizedBox(
                height: context.screenHeight * 0.24,
                child: const Center(child: CircularProgressIndicator()),
              ),
            ),
            initialListings.when(
              data: (data) => Column(
                children: data.entries
                    .map(
                      (category) => [
                        CategoryListingRow(
                          title: category.key,
                          listings: category.value,
                        ),
                        SizedBox(height: context.spaceMedium),
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

              loading: () => const Center(child: CircularProgressIndicator()),
            ),
            SizedBox(height: context.bottomPadding + 60),
          ],
        ),
      ),
    );
  }
}
