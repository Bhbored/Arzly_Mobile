import 'package:arzly/core/enums/listing/listing_status.dart';
import 'package:arzly/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class UserListingCardStatusAppearance {
  const UserListingCardStatusAppearance({
    required this.accentColor,
    required this.badgeBackground,
    required this.badgeForeground,
    required this.imageOpacity,
    this.desaturateImage = false,
  });

  final Color accentColor;
  final Color badgeBackground;
  final Color badgeForeground;
  final double imageOpacity;
  final bool desaturateImage;

  Color borderColor(ColorScheme scheme) =>
      accentColor.withValues(alpha: 0.28);
}

extension ListingStatusCardAppearance on ListingStatus {
  UserListingCardStatusAppearance cardAppearance(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return switch (this) {
      ListingStatus.active => UserListingCardStatusAppearance(
            accentColor: scheme.primary,
            badgeBackground: scheme.primaryContainer,
            badgeForeground: scheme.onPrimaryContainer,
            imageOpacity: 1,
          ),
      ListingStatus.pending => UserListingCardStatusAppearance(
            accentColor: isDark
                ? AppColors.onWarningContainerDark
                : const Color(0xFFB86A00),
            badgeBackground: isDark
                ? AppColors.warningContainerDark
                : AppColors.warningContainerLight,
            badgeForeground: isDark
                ? AppColors.onWarningContainerDark
                : AppColors.onWarningContainerLight,
            imageOpacity: 1,
          ),
      ListingStatus.rejected => UserListingCardStatusAppearance(
            accentColor: scheme.error,
            badgeBackground: scheme.errorContainer,
            badgeForeground: scheme.onErrorContainer,
            imageOpacity: 0.88,
            desaturateImage: true,
          ),
      ListingStatus.sold => UserListingCardStatusAppearance(
            accentColor: scheme.outline,
            badgeBackground: scheme.surfaceContainerHighest,
            badgeForeground: scheme.onSurfaceVariant,
            imageOpacity: 0.72,
            desaturateImage: true,
          ),
      ListingStatus.expired ||
      ListingStatus.deleted =>
        UserListingCardStatusAppearance(
          accentColor: scheme.outlineVariant,
          badgeBackground: scheme.surfaceContainerHigh,
          badgeForeground: scheme.onSurfaceVariant,
          imageOpacity: 0.65,
          desaturateImage: true,
        ),
    };
  }
}
