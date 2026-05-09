import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/themes/app_colors.dart';
import 'package:arzly/features/shared/snack_bar/app_snack_bar_variant.dart';
import 'package:flutter/material.dart';

abstract final class AppSnackBar {
  static SnackBar snackBar(
    BuildContext context, {
    required String message,
    required AppSnackBarVariant variant,
  }) {
    final cs = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final textTheme = Theme.of(context).textTheme;

    late final Color background;
    late final Color foreground;
    late final IconData icon;

    switch (variant) {
      case AppSnackBarVariant.success:
        icon = Icons.check_circle_rounded;
        background = cs.primaryContainer;
        foreground = cs.onPrimaryContainer;
      case AppSnackBarVariant.error:
        icon = Icons.error_rounded;
        background = cs.errorContainer;
        foreground = cs.onErrorContainer;
      case AppSnackBarVariant.warning:
        icon = Icons.warning_rounded;
        background =
            isDark ? AppColors.warningContainerDark : AppColors.warningContainerLight;
        foreground = isDark
            ? AppColors.onWarningContainerDark
            : AppColors.onWarningContainerLight;
    }

    return SnackBar(
      behavior: SnackBarBehavior.floating,
      backgroundColor: background,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(context.borderRadiusMedium + 4),
      ),
      margin: EdgeInsets.fromLTRB(
        context.paddingMedium,
        0,
        context.paddingMedium,
        context.bottomPadding + context.spaceSmall,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: context.paddingMedium,
        vertical: context.spaceSmall,
      ),
      content: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: foreground, size: 22),
          SizedBox(width: context.spaceSmall + 2),
          Expanded(
            child: Text(
              message,
              style: textTheme.bodyMedium?.copyWith(
                color: foreground,
                fontWeight: FontWeight.w600,
                height: 1.35,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static void show(
    BuildContext context, {
    required String message,
    required AppSnackBarVariant variant,
    bool clearCurrent = true,
  }) {
    final messenger = ScaffoldMessenger.maybeOf(context);
    if (messenger == null) return;
    if (clearCurrent) {
      messenger.clearSnackBars();
    }
    messenger.showSnackBar(
      snackBar(context, message: message, variant: variant),
    );
  }
}
