import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/features/home/widgets/category_selector.dart';
import 'package:arzly/features/home/widgets/home_app_bar.dart';
import 'package:arzly/features/home/widgets/listing_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: const HomeAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: context.paddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: context.spaceMedium),
            // Search Section
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainerLow,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.08),
                    blurRadius: 12,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Theme.of(context).colorScheme.onSurfaceVariant.withValues(alpha: 0.7),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search skills, items, or help...',
                        hintStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Theme.of(context).colorScheme.onSurfaceVariant.withValues(alpha: 0.7),
                            ),
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        fillColor: Colors.transparent,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondaryContainer.withValues(alpha: 0.5),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 14,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'Beirut',
                          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: context.spaceLarge),
            // Categories
            const CategorySelector(),
            SizedBox(height: context.spaceLarge),
            // Listing Feed
            const ListingCard(
              title: 'Professional Graphic Design & Branding',
              imageUrl: 'https://images.unsplash.com/photo-1572044162444-ad60f128bde7?q=80&w=1000&auto=format&fit=crop',
              status: 'Approved',
              category: 'Skill Offered',
              location: 'Ashrafieh, Beirut',
              price: 'Trade',
            ),
            SizedBox(height: context.spaceMedium),
            const ListingCard(
              title: 'Vintage Peugeot Road Bike (Needs TLC)',
              imageUrl: 'https://images.unsplash.com/photo-1485965120184-e220f721d03e?q=80&w=1000&auto=format&fit=crop',
              status: 'Reviewing',
              category: 'Item Offered',
              location: 'Hamra, Beirut',
              price: '\$45',
            ),
            SizedBox(height: context.spaceMedium),
            const ListingCard(
              title: 'Advanced University Calculus Tutoring',
              imageUrl: 'https://images.unsplash.com/photo-1434030216411-0b793f4b4173?q=80&w=1000&auto=format&fit=crop',
              status: 'Approved',
              category: 'Help Offered',
              location: 'Jal el Dib, Mount Lebanon',
              price: '\$15/hr',
            ),
            SizedBox(height: context.bottomPadding + 100), // Account for floating bottom nav
          ],
        ),
      ),
    );
  }
}
