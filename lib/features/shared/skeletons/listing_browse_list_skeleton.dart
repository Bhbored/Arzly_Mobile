import 'package:arzly/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ListingBrowseListSkeleton extends StatelessWidget {
  const ListingBrowseListSkeleton({super.key, this.itemCount = 5});

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    final cardHeight = context.screenHeight * 0.15;
    final imageWidth = (cardHeight * 1.05).clamp(
      context.screenWidth * 0.28,
      context.screenWidth * 0.32,
    );

    return Skeletonizer(
      child: ListView.separated(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.fromLTRB(
          context.paddingSmall,
          context.spaceSmall,
          context.paddingSmall,
          context.bottomPadding + context.spaceMedium,
        ),
        itemCount: itemCount,
        separatorBuilder: (_, _) => SizedBox(height: context.spaceSmall),
        itemBuilder: (_, _) => ListingBrowseCardSkeleton(
          cardHeight: cardHeight,
          imageWidth: imageWidth,
        ),
      ),
    );
  }
}

class ListingBrowseCardSkeleton extends StatelessWidget {
  const ListingBrowseCardSkeleton({
    super.key,
    required this.cardHeight,
    required this.imageWidth,
  });

  final double cardHeight;
  final double imageWidth;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final radius = BorderRadius.circular(5);

    return Material(
      color: colors.surface,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: radius,
        side: BorderSide(
          color: colors.outlineVariant.withValues(alpha: 0.45),
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: SizedBox(
        height: cardHeight,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Bone(
              width: imageWidth,
              height: cardHeight,
              borderRadius: BorderRadius.zero,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                  context.paddingSmall + 2,
                  context.paddingSmall,
                  context.paddingSmall,
                  context.paddingSmall,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Bone.text(
                      words: 1,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    SizedBox(height: context.spaceSmall * 0.35),
                    Bone.text(
                      words: 3,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    SizedBox(height: context.spaceSmall * 0.35),
                    Bone.text(
                      words: 2,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    SizedBox(height: context.spaceSmall * 0.4),
                    Bone.text(
                      words: 2,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const Spacer(),
                    Bone.text(
                      words: 2,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
