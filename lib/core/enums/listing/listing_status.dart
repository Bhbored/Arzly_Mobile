import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lucide_icons/lucide_icons.dart';

@JsonEnum(alwaysCreate: true)
enum ListingStatus {
  @JsonValue('Pending')
  pending,
  @JsonValue('Active')
  active,
  @JsonValue('Sold')
  sold,
  @JsonValue('Expired')
  expired,
  @JsonValue('Rejected')
  rejected,
  @JsonValue('Deleted')
  deleted;

  static const List<ListingStatus> userListingsTabs = [
    ListingStatus.active,
    ListingStatus.pending,
    ListingStatus.rejected,
    ListingStatus.sold,
  ];
}

extension ListingStatusUserListings on ListingStatus {
  String get tabLabel => switch (this) {
        ListingStatus.active => 'Active',
        ListingStatus.pending => 'Pending',
        ListingStatus.rejected => 'Rejected',
        ListingStatus.sold => 'Sold',
        ListingStatus.expired => 'Expired',
        ListingStatus.deleted => 'Deleted',
      };

  IconData get tabIcon => switch (this) {
        ListingStatus.active => LucideIcons.badgeCheck,
        ListingStatus.pending => LucideIcons.clock,
        ListingStatus.rejected => LucideIcons.xCircle,
        ListingStatus.sold => LucideIcons.circleDollarSign,
        ListingStatus.expired => LucideIcons.calendarClock,
        ListingStatus.deleted => LucideIcons.trash2,
      };

  String get emptyStateTitle => switch (this) {
        ListingStatus.active => 'No active listings',
        ListingStatus.pending => 'Nothing pending',
        ListingStatus.rejected => 'No rejected listings',
        ListingStatus.sold => 'No sold listings',
        ListingStatus.expired => 'No expired listings',
        ListingStatus.deleted => 'No deleted listings',
      };

  String get emptyStateMessage => switch (this) {
        ListingStatus.active =>
          'Listings you publish and get approved will show up here.',
        ListingStatus.pending =>
          'New posts waiting for review will appear in this tab.',
        ListingStatus.rejected =>
          'Listings that did not pass review will be listed here.',
        ListingStatus.sold =>
          'Mark items as sold and they will be kept in this tab.',
        ListingStatus.expired => 'Expired listings will show up here.',
        ListingStatus.deleted => 'Deleted listings will show up here.',
      };
}
