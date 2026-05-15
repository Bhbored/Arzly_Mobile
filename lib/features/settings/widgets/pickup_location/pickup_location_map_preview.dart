import 'package:arzly/core/constants/app_sizes.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PickupLocationMapPreview extends StatelessWidget {
  const PickupLocationMapPreview({super.key, this.imageUrl});

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final radius = BorderRadius.circular(context.borderRadiusMedium);
    final height = context.screenWidth * 0.38;
    final hasUrl = imageUrl != null && imageUrl!.isNotEmpty;

    return ClipRRect(
      borderRadius: radius,
      child: SizedBox(
        height: height.clamp(120.0, 200.0),
        width: double.infinity,
        child: hasUrl
            ? CachedNetworkImage(
                imageUrl: imageUrl!,
                fit: BoxFit.cover,
                fadeInDuration: const Duration(milliseconds: 280),
                placeholder: (_, _) => ColoredBox(
                  color: colors.surfaceContainerHigh,
                  child: Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: colors.primary,
                    ),
                  ),
                ),
                errorWidget: (_, _, _) => _fallback(colors),
              )
            : _fallback(colors),
      ),
    );
  }

  Widget _fallback(ColorScheme colors) {
    return ColoredBox(
      color: colors.surfaceContainerHigh,
      child: Center(
        child: Icon(
          Icons.map_rounded,
          color: colors.onSurfaceVariant,
          size: 40,
        ),
      ),
    );
  }
}
