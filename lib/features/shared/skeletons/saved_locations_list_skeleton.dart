import 'package:arzly/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SavedLocationsListSkeleton extends StatelessWidget {
  const SavedLocationsListSkeleton({super.key, this.itemCount = 5});

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: ListView.separated(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.fromLTRB(
          context.paddingMedium,
          context.spaceSmall,
          context.paddingMedium,
          context.bottomPadding + context.spaceMedium,
        ),
        itemCount: itemCount,
        separatorBuilder: (_, _) => SizedBox(height: context.spaceSmall),
        itemBuilder: (_, _) => const SavedLocationCardSkeleton(),
      ),
    );
  }
}

class SavedLocationCardSkeleton extends StatelessWidget {
  const SavedLocationCardSkeleton({super.key});

  static const double _thumbnailSize = 76;
  static const double _badgeSize = 36;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final radius = BorderRadius.circular(context.borderRadiusLarge - 4);
    final thumbRadius =
        BorderRadius.circular(context.borderRadiusMedium - 2);
    final badgeRadius =
        BorderRadius.circular(context.borderRadiusMedium - 2);

    return Material(
      color: colors.surfaceContainerLow.withValues(alpha: 0.95),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: radius,
        side: BorderSide(
          color: colors.outlineVariant.withValues(alpha: 0.4),
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: EdgeInsets.all(context.paddingMedium * 0.85),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Bone(
              width: _thumbnailSize,
              height: _thumbnailSize,
              borderRadius: thumbRadius,
            ),
            SizedBox(width: context.paddingSmall + 4),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Bone(
                        width: _badgeSize,
                        height: _badgeSize,
                        borderRadius: badgeRadius,
                      ),
                      SizedBox(width: context.spaceSmall),
                      Bone.button(
                        width: 72,
                        height: 24,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ],
                  ),
                  SizedBox(height: context.spaceSmall * 0.65),
                  Bone.text(
                    words: 3,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  SizedBox(height: context.spaceSmall * 0.35),
                  Bone.text(
                    words: 6,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(height: context.spaceSmall * 0.2),
                  Bone.text(
                    words: 4,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            const Bone.icon(size: 22),
          ],
        ),
      ),
    );
  }
}
