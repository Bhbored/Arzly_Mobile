import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/listing/listing_status.dart';
import 'package:arzly/data/providers/listings/user_lisitings/user_listings_provider.dart';
import 'package:arzly/domain/entities/listing/listing.dart';
import 'package:arzly/features/user_listings/widgets/user_listings_status_tabs.dart';
import 'package:arzly/features/user_listings/widgets/user_listings_tab_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserListingsScreen extends ConsumerStatefulWidget {
  const UserListingsScreen({super.key});

  @override
  ConsumerState<UserListingsScreen> createState() => _UserListingsScreenState();
}

class _UserListingsScreenState extends ConsumerState<UserListingsScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: ListingStatus.userListingsTabs.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Map<ListingStatus, int> _countsForTabs(List<Listing> listings) {
    final counts = <ListingStatus, int>{};
    for (final status in ListingStatus.userListingsTabs) {
      counts[status] = listings
          .where((listing) => listing.status == status)
          .length;
    }
    return counts;
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final listingsAsync = ref.watch(userListingsProvider);
    final counts = listingsAsync.maybeWhen(
      data: _countsForTabs,
      orElse: () => <ListingStatus, int>{},
    );

    return Scaffold(
      backgroundColor: colors.surface,
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                context.paddingMedium,
                context.spaceSmall,
                context.paddingMedium,
                context.spaceSmall * 0.5,
              ),
              child: Text(
                'My Posts',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w800,
                  color: colors.onSurface,
                ),
              ),
            ),
            UserListingsStatusTabs(
              tabController: _tabController,
              countsByStatus: counts,
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  for (final status in ListingStatus.userListingsTabs)
                    UserListingsTabPage(status: status),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
