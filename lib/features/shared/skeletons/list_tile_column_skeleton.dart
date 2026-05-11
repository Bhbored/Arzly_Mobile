import 'package:arzly/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ListTileColumnSkeleton extends StatelessWidget {
  const ListTileColumnSkeleton({
    super.key,
    this.itemCount = 6,
    this.itemSpacing,
    this.tileHeight = 72,
    this.includeLeading = true,
    this.includeTrailing = true,
    this.tileBackgroundColor,
  });

  final int itemCount;
  final double? itemSpacing;
  final double tileHeight;
  final bool includeLeading;
  final bool includeTrailing;
  final Color? tileBackgroundColor;

  @override
  Widget build(BuildContext context) {
    final spacing = itemSpacing ?? context.spaceSmall * 0.25;

    return Skeletonizer(
      child: Column(
        children: List.generate(itemCount * 2 - 1, (index) {
          if (index.isOdd) {
            return SizedBox(height: spacing);
          }

          return ListTileColumnSkeletonItem(
            tileHeight: tileHeight,
            includeLeading: includeLeading,
            includeTrailing: includeTrailing,
            tileBackgroundColor: tileBackgroundColor,
          );
        }),
      ),
    );
  }
}

class ListTileColumnSkeletonItem extends StatelessWidget {
  const ListTileColumnSkeletonItem({
    super.key,
    required this.tileHeight,
    required this.includeLeading,
    required this.includeTrailing,
    this.tileBackgroundColor,
  });

  final double tileHeight;
  final bool includeLeading;
  final bool includeTrailing;
  final Color? tileBackgroundColor;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final tileBg = tileBackgroundColor ?? colors.surfaceContainerLowest;

    return Material(
      color: tileBg,
      borderRadius: BorderRadius.circular(16),
      child: ListTileColumnSkeletonTile(
        tileHeight: tileHeight,
        includeLeading: includeLeading,
        includeTrailing: includeTrailing,
      ),
    );
  }
}

class ListTileColumnSkeletonTile extends StatelessWidget {
  const ListTileColumnSkeletonTile({
    super.key,
    required this.tileHeight,
    required this.includeLeading,
    required this.includeTrailing,
  });

  final double tileHeight;
  final bool includeLeading;
  final bool includeTrailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minTileHeight: tileHeight,
      contentPadding: EdgeInsets.symmetric(
        horizontal: context.paddingSmall * 1.4,
        vertical: context.spaceSmall * 0.35,
      ),
      leading: includeLeading ? const Bone.circle(size: 48) : null,
      title: Bone.text(
        words: 2,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      trailing: includeTrailing ? const Bone.icon(size: 24) : null,
    );
  }
}
