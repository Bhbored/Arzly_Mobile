import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/listing/listing_status.dart';
import 'package:arzly/core/exceptions/api_exception.dart';
import 'package:arzly/data/providers/listings/user_lisitings/user_listings_provider.dart';
import 'package:arzly/features/user_listings/widgets/card_variation/user_listing_card.dart';
import 'package:arzly/features/new_listing/new_listing_screen.dart';
import 'package:arzly/features/shared/skeletons/user_listings_list_skeleton.dart';
import 'package:arzly/features/shared/widgets/empty_state_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserListingsTabPage extends ConsumerWidget {
  const UserListingsTabPage({super.key, required this.status});

  final ListingStatus status;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listingsAsync = ref.watch(userListingsProvider);
    return listingsAsync.when(
      data: (allListings) {
        final listings = allListings
            .where((listing) => listing.status == status)
            .toList();

        if (listings.isEmpty) {
          return EmptyStateView(
            icon: status.tabIcon,
            title: status.emptyStateTitle,
            message: status.emptyStateMessage,
            actionLabel: status == ListingStatus.active
                ? 'Create listing'
                : null,
            onAction: status == ListingStatus.active
                ? () => Navigator.of(context).push(createNewListingRoute())
                : null,
          );
        }

        return RefreshIndicator(
          color: Theme.of(context).colorScheme.primary,
          onRefresh: () => ref.read(userListingsProvider.notifier).refresh(),
          child: ListView.separated(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.fromLTRB(
              context.paddingMedium,
              context.spaceSmall,
              context.paddingMedium,
              context.scrollPaddingAboveMainNav - context.spaceLarge,
            ),
            itemCount: listings.length,
            separatorBuilder: (_, _) => SizedBox(height: context.spaceMedium),
            itemBuilder: (context, index) {
              return UserListingCard(listing: listings[index]);
            },
          ),
        );
      },
      loading: () => const UserListingsListSkeleton(),
      error: (error, _) {
        final message = error is ApiException
            ? error.userMessage
            : 'Something went wrong';
        return Center(
          child: Padding(
            padding: EdgeInsets.all(context.paddingMedium),
            child: Text(
              message,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.error,
              ),
            ),
          ),
        );
      },
    );
  }
}
