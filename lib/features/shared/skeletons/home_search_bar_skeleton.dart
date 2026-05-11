import 'package:arzly/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomeSearchBarSkeleton extends StatelessWidget {
  const HomeSearchBarSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final isLight = Theme.of(context).brightness == Brightness.light;
    final elevationShadow = isLight
        ? Colors.grey.withValues(alpha: 0.28)
        : Colors.black.withValues(alpha: 0.35);

    return Skeletonizer(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: context.paddingMedium,
          vertical: context.spaceSmall * 1.3,
        ),
        decoration: BoxDecoration(
          color: colors.surface,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: elevationShadow,
              blurRadius: 12,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            const HomeSearchBarSkeletonInput(),
            SizedBox(width: context.paddingSmall * 0.75),
            const HomeSearchBarSkeletonLocation(),
          ],
        ),
      ),
    );
  }
}

class HomeSearchBarSkeletonInput extends StatelessWidget {
  const HomeSearchBarSkeletonInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          const Bone.icon(size: 24),
          SizedBox(width: context.paddingSmall),
          Expanded(
            child: Bone(
              height: context.spaceSmall * 2.3,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeSearchBarSkeletonLocation extends StatelessWidget {
  const HomeSearchBarSkeletonLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Bone(
      width: context.screenWidth * 0.22,
      height: 30,
      borderRadius: BorderRadius.circular(100),
    );
  }
}
