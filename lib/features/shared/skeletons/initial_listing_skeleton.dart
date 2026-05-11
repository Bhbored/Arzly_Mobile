import 'package:arzly/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class InitialListingSkeleton extends StatelessWidget {
  const InitialListingSkeleton({super.key});

  static const _rowCount = 3;

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: Column(
        children: List.generate(_rowCount * 2 - 1, (index) {
          if (index.isOdd) {
            return SizedBox(height: context.spaceMedium);
          }

          return const InitialListingSkeletonRow();
        }),
      ),
    );
  }
}

class InitialListingSkeletonRow extends StatelessWidget {
  const InitialListingSkeletonRow({super.key});

  static const _cardCount = 3;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Bone.text(
                words: 2,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            SizedBox(width: context.spaceSmall),
            Bone.button(
              width: context.screenWidth * 0.16,
              height: 32,
              borderRadius: BorderRadius.circular(context.borderRadiusMedium),
            ),
          ],
        ),
        SizedBox(height: context.spaceMedium),
        SizedBox(
          height: context.screenHeight * 0.28,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _cardCount,
            separatorBuilder: (_, _) =>
                SizedBox(width: context.paddingMedium),
            itemBuilder: (_, _) {
              return SizedBox(
                width: context.screenWidth * 0.62,
                child: const InitialListingSkeletonCard(),
              );
            },
          ),
        ),
      ],
    );
  }
}

class InitialListingSkeletonCard extends StatelessWidget {
  const InitialListingSkeletonCard({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
        color: colors.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(context.borderRadiusMedium),
        border: Border.all(
          color: colors.outlineVariant.withValues(alpha: 0.6),
          width: 2,
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Expanded(
            child: Bone(
              width: double.infinity,
              height: double.infinity,
              borderRadius: BorderRadius.zero,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
              context.paddingSmall,
              context.paddingSmall * 0.8,
              context.paddingSmall,
              context.paddingSmall * 0.8,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Bone.text(
                  words: 3,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                SizedBox(height: context.spaceSmall),
                Bone.text(
                  words: 2,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                SizedBox(height: context.spaceSmall),
                Bone.text(
                  words: 4,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
