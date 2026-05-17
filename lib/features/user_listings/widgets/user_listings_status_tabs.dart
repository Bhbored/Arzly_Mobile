import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/listing/listing_status.dart';
import 'package:flutter/material.dart';

class UserListingsStatusTabs extends StatelessWidget {
  const UserListingsStatusTabs({
    super.key,
    required this.tabController,
    required this.countsByStatus,
  });

  final TabController tabController;
  final Map<ListingStatus, int> countsByStatus;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return TabBar(
      controller: tabController,
      isScrollable: false,
      tabAlignment: TabAlignment.fill,
      dividerHeight: 1,
      dividerColor: colors.outlineVariant.withValues(alpha: 0.35),
      indicatorSize: TabBarIndicatorSize.label,
      indicatorWeight: 2.5,
      indicatorColor: colors.primary,
      splashFactory: NoSplash.splashFactory,
      overlayColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.pressed)) {
          return colors.primary.withValues(alpha: 0.06);
        }
        return null;
      }),
      labelColor: colors.onSurface,
      unselectedLabelColor: colors.onSurfaceVariant.withValues(alpha: 0.9),
      labelStyle: textTheme.labelLarge?.copyWith(
        fontWeight: FontWeight.w700,
        letterSpacing: 0.1,
        fontSize: 14,
      ),
      unselectedLabelStyle: textTheme.labelLarge?.copyWith(
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        fontSize: 14,
      ),
      labelPadding: EdgeInsets.symmetric(
        horizontal: context.paddingSmall * 0.25,
      ),
      tabs: [
        for (final status in ListingStatus.userListingsTabs)
          Tab(
            height: 50,
            child: _UserListingsTabLabel(
              status: status,
              count: countsByStatus[status] ?? 0,
            ),
          ),
      ],
    );
  }
}

class _UserListingsTabLabel extends StatelessWidget {
  const _UserListingsTabLabel({required this.status, required this.count});

  final ListingStatus status;
  final int count;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(status.tabIcon, size: 20),
        SizedBox(width: context.spaceSmall * 0.5),
        Flexible(
          child: Text(
            status.tabLabel,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: colors.onSurface,
            ),
          ),
        ),
        if (count > 0) ...[
          SizedBox(width: context.spaceSmall * 0.35),
          Text(
            '$count',
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 12,
              color: colors.onSurfaceVariant.withValues(alpha: 0.75),
              fontFeatures: const [FontFeature.tabularFigures()],
            ),
          ),
        ],
      ],
    );
  }
}
