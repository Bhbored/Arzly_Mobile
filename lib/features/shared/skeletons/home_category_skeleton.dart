import 'package:arzly/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomeCategorySkeleton extends StatelessWidget {
  const HomeCategorySkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: Column(
        children: [
          const HomeCategorySkeletonHeader(),
          SizedBox(height: context.spaceSmall),
          const HomeCategorySkeletonList(),
        ],
      ),
    );
  }
}

class HomeCategorySkeletonHeader extends StatelessWidget {
  const HomeCategorySkeletonHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

class HomeCategorySkeletonList extends StatelessWidget {
  const HomeCategorySkeletonList({super.key});

  static const _itemCount = 5;
  static const _gap = 4.0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final itemWidth = (constraints.maxWidth - (_gap * 4)) / 5;

        return SizedBox(
          height: context.screenHeight * 0.12,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _itemCount,
            separatorBuilder: (_, _) => const SizedBox(width: _gap),
            itemBuilder: (_, _) {
              return SizedBox(
                width: itemWidth,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Bone.circle(size: 62),
                    SizedBox(height: context.spaceMedium),
                    SizedBox(
                      height: 28,
                      width: itemWidth,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Bone.text(
                          width: itemWidth,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
