import 'package:arzly/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class UserListingsListSkeleton extends StatelessWidget {
  const UserListingsListSkeleton({super.key, this.itemCount = 4});

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
          context.scrollPaddingAboveMainNav - context.spaceLarge,
        ),
        itemCount: itemCount,
        separatorBuilder: (_, _) => SizedBox(height: context.spaceMedium),
        itemBuilder: (_, _) => const UserListingCardSkeleton(),
      ),
    );
  }
}

class UserListingCardSkeleton extends StatelessWidget {
  const UserListingCardSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final radius = BorderRadius.circular(context.borderRadiusMedium);
    final imageWidth = context.screenWidth * 0.3;
    final cardMinHeight = context.screenHeight * 0.14;

    return Material(
      color: colors.surfaceContainerLow,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: radius,
        side: BorderSide(
          color: colors.outlineVariant.withValues(alpha: 0.45),
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: SizedBox(
        height: cardMinHeight,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Bone(
              width: 4,
              height: double.infinity,
              borderRadius: BorderRadius.zero,
            ),
            Bone(
              width: imageWidth,
              height: cardMinHeight,
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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Bone.text(
                            words: 4,
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ),
                        SizedBox(width: context.spaceSmall * 0.5),
                        Bone.button(
                          width: 76,
                          height: 24,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ],
                    ),
                    SizedBox(height: context.spaceSmall * 0.45),
                    Bone.text(
                      words: 1,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    SizedBox(height: context.spaceSmall * 0.55),
                    Bone.text(
                      words: 3,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    SizedBox(height: context.spaceSmall * 0.65),
                    Row(
                      children: [
                        const Bone.icon(size: 15),
                        SizedBox(width: context.spaceSmall * 0.35),
                        Expanded(
                          child: Bone.text(
                            words: 3,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                        SizedBox(width: context.spaceSmall * 0.5),
                        Bone.text(
                          words: 2,
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ],
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

