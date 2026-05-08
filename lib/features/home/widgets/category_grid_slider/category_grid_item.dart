import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/domain/entities/category/category.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class CategoryGridItem extends StatelessWidget {
  final Category category;

  const CategoryGridItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final imageUrl = category.imageUrl;
    final avatarBg = colors.primaryContainer.withValues(alpha: 0.5);
    final avatarInnerBg = colors.secondaryContainer.withValues(alpha: 0.45);
    final avatarBorder = colors.primary.withValues(alpha: 0.5);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 62,
          height: 62,
          padding: const EdgeInsets.all(1.5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: avatarBorder,
          ),
          child: Container(
            decoration: BoxDecoration(shape: BoxShape.circle, color: avatarBg),
            child: ClipOval(
              child: Container(
                color: avatarInnerBg,
                alignment: Alignment.center,
                child: imageUrl != null && imageUrl.isNotEmpty
                    ? ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 52,
                          maxHeight: 52,
                        ),
                        child: FadeInImage.memoryNetwork(
                          placeholder: kTransparentImage,
                          image: imageUrl,
                          fit: BoxFit.contain,
                          fadeInDuration: const Duration(milliseconds: 250),
                          imageErrorBuilder: (_, __, ___) =>
                              _fallbackIcon(context),
                        ),
                      )
                    : _fallbackIcon(context),
              ),
            ),
          ),
        ),
        SizedBox(height: context.spaceMedium),
        SizedBox(
          height: 28,
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              category.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w600,
                height: 1.15,
                fontSize: 11,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _fallbackIcon(BuildContext context) {
    return Container(
      color: Theme.of(
        context,
      ).colorScheme.secondaryContainer.withValues(alpha: 0.45),
      alignment: Alignment.center,
      child: Icon(
        Icons.park_rounded,
        size: 20,
        color: Theme.of(context).colorScheme.onSurfaceVariant,
      ),
    );
  }
}
