import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/data/providers/category/category_provider.dart';
import 'package:arzly/data/providers/subcategory/subcategory_provider.dart';
import 'package:arzly/domain/entities/listing/listing.dart';
import 'package:arzly/features/home/widgets/listing_card.dart';
import 'package:arzly/features/listings/shared/open_listings_by_subcategory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SubcategoryListingRow extends ConsumerWidget {
  const SubcategoryListingRow({
    super.key,
    required this.subcategoryName,
    required this.listings,
  });

  final String subcategoryName;
  final List<Listing> listings;

  Future<void> _openSeeAll(BuildContext context, WidgetRef ref) async {
    if (listings.isEmpty) return;

    final listing = listings.first;
    final categories = await ref.read(categoryDataProvider.future);
    final category = categories
        .where((c) => c.id == listing.categoryId)
        .firstOrNull;
    if (category == null || !context.mounted) return;

    final subcategories = await ref.read(
      subcategoryProvider(listing.categoryId).future,
    );
    final subcategory = subcategories
        .where((s) => s.id == listing.subcategoryId)
        .firstOrNull;
    if (subcategory == null || !context.mounted) return;

    openListingsBySubcategory(
      context,
      category: category,
      subcategory: subcategory,
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (listings.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              subcategoryName,
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            TextButton(
              onPressed: () => _openSeeAll(context, ref),
              child: Text(
                'See all',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: context.screenHeight * 0.28,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const AlwaysScrollableScrollPhysics(),
            itemCount: listings.length,
            separatorBuilder: (_, _) => SizedBox(width: context.paddingMedium),
            itemBuilder: (_, index) {
              return SizedBox(
                width: context.screenWidth * 0.62,
                child: ListingCard(listing: listings[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
