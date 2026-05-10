import 'package:arzly/core/constants/app_sizes.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SavedLocationMapAvatar extends StatelessWidget {
  const SavedLocationMapAvatar({super.key, this.imageUrl});

  final String? imageUrl;

  static double sizeOf(BuildContext context) =>
      context.screenWidth * 0.16 + 8;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final diameter = sizeOf(context).clamp(56.0, 72.0);
    final borderColor = colors.outlineVariant.withValues(alpha: 0.55);

    return Container(
      width: diameter,
      height: diameter,
      padding: const EdgeInsets.all(2.5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: borderColor),
        boxShadow: [
          BoxShadow(
            color: colors.shadow.withValues(alpha: 0.1),
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: colors.surfaceContainerHighest.withValues(alpha: 0.65),
        ),
        child: ClipOval(
          child: imageUrl != null && imageUrl!.isNotEmpty
              ? CachedNetworkImage(
                  imageUrl: imageUrl!,
                  width: diameter,
                  height: diameter,
                  fit: BoxFit.cover,
                  fadeInDuration: const Duration(milliseconds: 280),
                  placeholder: (context, url) => const ColoredBox(
                    color: Colors.transparent,
                  ),
                  errorWidget: (context, url, error) => _fallback(context),
                )
              : _fallback(context),
        ),
      ),
    );
  }

  Widget _fallback(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ColoredBox(
      color: colors.surfaceContainerHigh.withValues(alpha: 0.9),
      child: Icon(
        Icons.map_rounded,
        color: colors.onSurfaceVariant,
        size: 26,
      ),
    );
  }
}
