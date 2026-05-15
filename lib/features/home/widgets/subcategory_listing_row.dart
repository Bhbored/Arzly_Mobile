import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/domain/entities/listing/listing.dart';
import 'package:arzly/features/home/widgets/listing_card.dart';
import 'package:flutter/material.dart';

class SubcategoryListingRow extends StatelessWidget {
  const SubcategoryListingRow({
    super.key,
    required this.subcategoryName,
    required this.listings,
  });

  final String subcategoryName;
  final List<Listing> listings;

  @override
  Widget build(BuildContext context) {
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
              onPressed: () {},
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
